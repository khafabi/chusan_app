import 'package:firebase_auth/firebase_auth.dart';
import 'package:chusan_app/models/barrel_model.dart';
import 'package:chusan_app/services/barrel_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user =
      await UserService().getUserById(userCredential.user!.uid);

      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      /// Register to Authentication
      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      /// Send email confirmation
      // userCredential.user!.sendEmailVerification();

      /// Create Firestore
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
