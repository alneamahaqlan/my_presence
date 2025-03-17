import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../dependency_injection.dart';
import '../../features/auth/data/models/user_model.dart';
import '../utils/enums/activity_status.dart';
import '../utils/enums/role.dart';
import 'firebase_auth_service.dart';
import 'notification_service.dart';

class FirestoreService {
  final FirebaseFirestore firestore;
  final FirebaseAuthService _firebaseAuthService;

  FirestoreService(this.firestore, this._firebaseAuthService);

  Future<DocumentReference<Map<String, dynamic>>> addDocument({
    required String collectionName,
    required Map<String, dynamic> data,
  }) async {
    final timestamp = FieldValue.serverTimestamp();
    data['createdAt'] = timestamp;
    data['updatedAt'] = timestamp;

    final docRef = await firestore.collection(collectionName).add(data);
    return docRef;
  }

  Stream<QuerySnapshot> getDocuments({
    required String collectionName,
    String orderByField = 'createdAt',
    bool descending = true,
    Query Function(Query query)? queryBuilder,
  }) {
    Query query = firestore
        .collection(collectionName)
        .orderBy(orderByField, descending: descending);

    if (queryBuilder != null) {
      query = queryBuilder(query);
    }

    return query.snapshots();
  }

  Future<bool> updateDocument({
    required String collectionName,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    try {
      data['updatedAt'] = FieldValue.serverTimestamp();
      await firestore.collection(collectionName).doc(documentId).update(data);
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> deleteDocument({
    required String collectionName,
    required String documentId,
  }) async {
    try {
      await firestore.collection(collectionName).doc(documentId).delete();
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DocumentReference<Map<String, dynamic>>> addDocumentById({
    required String collection,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    final timestamp = FieldValue.serverTimestamp();
    data['updatedAt'] = timestamp;
    data['createdAt'] ??= timestamp;

    final docRef = firestore.collection(collection).doc(docId);
    await docRef.set(data, SetOptions(merge: true));
    return docRef;
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> getDocumentById({
    required String collection,
    required String docId,
  }) {
    return firestore.collection(collection).doc(docId).snapshots();
  }

  Future<UserModel?> getUserData() async {
    final user = _firebaseAuthService.currentUser;
    if (user == null) return null;

    final userDoc = await firestore.collection('users').doc(user.uid).get();
    if (!userDoc.exists) {
      return null;
    }
    final member = UserModel.fromJson(userDoc.data() as Map<String, dynamic>);
    return member.copyWith(id: userDoc.id);
  }

  Future<void> addWithSubDocuments({
    required String mainCollection,
    required String subCollection,
    required Map<String, dynamic> mainData, // Main document data
    required List<Map<String, dynamic>> subDataList, // List of subdocuments
  }) async {
    final timestamp = FieldValue.serverTimestamp();

    // Ensure main document has timestamps
    mainData['createdAt'] ??= timestamp;
    mainData['updatedAt'] = timestamp;

    final mainDocRef =
        firestore.collection(mainCollection).doc(); // Auto-generate ID

    await firestore.runTransaction((transaction) async {
      // Create the main document
      transaction.set(mainDocRef, mainData);

      // Reference to the subcollection
      final subCollectionRef = mainDocRef.collection(subCollection);

      // Add each subdocument in the list
      for (var subData in subDataList) {
        subData['createdAt'] = timestamp;
        subData['updatedAt'] = timestamp;
        transaction.set(subCollectionRef.doc(), subData);
      }
    });

    print('Main document ID: ${mainDocRef.id}'); // Useful for reference
  }

  Stream<List<Map<String, dynamic>>> getWithSubDocuments({
    required String mainCollection,
    required String subCollection,
    String orderByField = 'createdAt',
    bool descending = true,
  }) {
    return firestore.collection(mainCollection).snapshots().asyncMap((
      mainSnapshot,
    ) async {
      List<Map<String, dynamic>> result = [];

      // Using Future.wait to process all main documents in parallel
      await Future.wait(
        mainSnapshot.docs.map((mainDoc) async {
          // Ensure main document ID is added
          Map<String, dynamic> mainData = mainDoc.data();
          mainData['id'] = mainDoc.id;

          // Fetch subcollection documents
          var subCollectionSnapshot =
              await mainDoc.reference
                  .collection(subCollection)
                  .orderBy(orderByField, descending: descending)
                  .get();

          // Ensure each subdocument includes its ID
          List<Map<String, dynamic>> subDocuments =
              subCollectionSnapshot.docs.map((subDoc) {
                Map<String, dynamic> subData = subDoc.data();
                subData['id'] = subDoc.id;
                return subData;
              }).toList();

          result.add({'mainDocument': mainData, 'subCollection': subDocuments});
        }),
      );

      return result;
    });
  }

  Future<UserModel?> signIn({
    required String email,
    required String password,
  }) async {
    try {
        final notificationService = getIt<NotificationService>();
        final token=await notificationService.getDeviceToken();
      final userCredential = await _firebaseAuthService
          .signInWithEmailAndPassword(email: email, password: password);

      await updateDocument(
        collectionName: 'users',
        documentId: userCredential.user!.uid,
        data: {'lastLogin': DateTime.now(),'fcmToken': token},
      );

      return await getUserData();
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<UserModel?> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    final userCredential = await _firebaseAuthService.signUp(
      email: email,
      password: password,
    );
      final notificationService = getIt<NotificationService>();
      final token=await notificationService.getDeviceToken();

    final docRef = await addDocumentById(
      collection: 'users',
      docId: userCredential.user!.uid,
      data: {
        'email': email,
        'name': name,
        'role': Role.teacher.name,
        'activityStatus': ActivityStatus.unknown.name,
        'fcmToken': token,
        'createdAt': DateTime.now(),
        'updatedAt': DateTime.now(),
        'lastLogin': DateTime.now(),
      },
    );

    final doc =
        await getDocumentById(collection: 'users', docId: docRef.id).first;
    final user = UserModel.fromJson(doc.data() as Map<String, dynamic>);

    return user.copyWith(id: doc.id);
  }

  Future<bool> signOut() async {
    try {
      await _firebaseAuthService.signOut();
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> resetPassword({required String email}) async {
    try {
      await _firebaseAuthService.resetPassword(email: email);
      return true;
    } catch (_) {
      return false;
    }
  }

  User? get currentUser => _firebaseAuthService.currentUser;

  Future<bool> updateUserDocument({
    required String collectionName,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    try {
      final user = _firebaseAuthService.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      data['updatedAt'] = FieldValue.serverTimestamp();

      await firestore
          .collection('users')
          .doc(user.uid)
          .collection(collectionName)
          .doc(documentId)
          .update(data);
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<bool> deleteUserDocument({
    required String collectionName,
    required String documentId,
  }) async {
    try {
      final user = _firebaseAuthService.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      await firestore
          .collection('users')
          .doc(user.uid)
          .collection(collectionName)
          .doc(documentId)
          .delete();
      return true;
    } catch (_) {
      return false;
    }
  }

  // Add this method to get a document by email
  Future<DocumentSnapshot<Map<String, dynamic>>> getDocumentByEmail({
    required String collectionName,
    required String email,
  }) async {
    final querySnapshot =
        await firestore
            .collection(collectionName)
            .where('email', isEqualTo: email)
            .limit(1)
            .get();

    if (querySnapshot.docs.isNotEmpty) {
      return querySnapshot.docs.first;
    } else {
      throw Exception('No document found with the provided email');
    }
  }
  Future<bool> updateSubDocument({
required String mainCollection,
    required String subCollection,
  required String mainDocumentId,
  required String subDocumentId,
  required Map<String, dynamic> data,
}) async {
  try {
    data['updatedAt'] = FieldValue.serverTimestamp();
   await firestore
          .collection(mainCollection)
          .doc(mainDocumentId)
          .collection(subCollection)
          .doc(subDocumentId)
          .update(data);
    return true;
  } catch (_) {
    return false;
  }
}
}
