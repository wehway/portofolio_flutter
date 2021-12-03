// ignore_for_file: unused_import, unused_field, prefer_final_fields, empty_catches, unused_local_variable, use_rethrow_when_possible

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:top_train/models/user_model.dart';
import 'package:top_train/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 500000);

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
      
  }
}
