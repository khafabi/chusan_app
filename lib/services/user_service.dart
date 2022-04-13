import 'package:chusan_app/models/barrel_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class UserService {
  final CollectionReference _userReference =
  FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'profilePhotoUrl': user.profilePhotoUrl,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
        id: id,
        name: snapshot['name'],
        email: snapshot['email'],
        profilePhotoUrl: snapshot['profilePhotoUrl'],
      );
    } catch (e) {
      rethrow;
    }
  }
}
