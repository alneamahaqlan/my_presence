import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/firestore_service.dart';

abstract class FirestoreRepository {
  Future<void> addDocument(String collection, Map<String, dynamic> data);
  Stream<QuerySnapshot> getDocuments(String collection);
  Future<void> updateDocument(String collection, String docId, Map<String, dynamic> data);
  Future<void> deleteDocument(String collection, String docId);
}

class FirestoreRepositoryImpl implements FirestoreRepository {
  final FirestoreService _firestoreService;

  FirestoreRepositoryImpl(this._firestoreService);

  @override
  Future<void> addDocument(String collection, Map<String, dynamic> data) async {
    await _firestoreService.addDocument(collectionName: collection, data: data);
  }

  @override
  Stream<QuerySnapshot> getDocuments(String collection) {
    return _firestoreService.getDocuments(collectionName: collection);
  }

  @override
  Future<void> updateDocument(String collection, String docId, Map<String, dynamic> data) async {
    await _firestoreService.updateDocument(collectionName: collection, documentId: docId, data: data);
  }

  @override
  Future<void> deleteDocument(String collection, String docId) async {
    await _firestoreService.deleteDocument(collectionName: collection, documentId: docId);
  }
}