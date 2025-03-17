import 'package:cloud_firestore/cloud_firestore.dart';

import '../repositories/firestore_repository.dart';

class UserUseCase {
  final FirestoreRepository _repository;

  UserUseCase(this._repository);

  Future<void> addUser(Map<String, dynamic> userData) async {
    await _repository.addDocument('users', userData);
  }

  Stream<QuerySnapshot> getUsers() {
    return _repository.getDocuments('users');
  }
}