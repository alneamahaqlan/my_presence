import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthService(this._firebaseAuth);

  /// 🔹 Get current user
  User? get currentUser => _firebaseAuth.currentUser;

  /// ✅ **New synchronous `isLoggedIn` getter**
  bool get isLoggedIn => _firebaseAuth.currentUser != null;

  /// 🔹 Listen to authentication state changes
  Stream<bool> get isLoggedInStream =>
      _firebaseAuth.authStateChanges().map((user) => user != null);

  /// 🔹 Sign In with Email & Password
  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } catch (e) {
      rethrow;
    }
  }

  /// 🔹 Sign Up (Register) with Email & Password
  Future<UserCredential> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } catch (e) {
      rethrow;
    }
  }

  /// 🔹 Sign Out
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      rethrow;
    }
  }

  /// 🔹 Reset Password
  Future<void> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      rethrow;
    }
  }

  /// 🔹 Check Email Verification
  Future<bool> isEmailVerified() async {
    try {
      await _firebaseAuth.currentUser?.reload();
      return _firebaseAuth.currentUser?.emailVerified ?? false;
    } catch (e) {
      rethrow;
    }
  }

  /// 🔹 Send Email Verification
  Future<void> sendEmailVerification() async {
    try {
      await _firebaseAuth.currentUser?.sendEmailVerification();
    } catch (e) {
      rethrow;
    }
  }
}