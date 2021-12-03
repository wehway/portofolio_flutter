// ignore_for_file: unused_import, unused_field, prefer_final_fields, empty_catches, use_rethrow_when_possible

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:top_train/models/user_model.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

      Future<void> setUser(UserModel user) async{

        try {
          _userReference.doc(user.id).set({
            'email': user.email,
            'name': user.name,
            'hobby': user.hobby,
            'balance': user.balance,
          });
        } catch (e) {
          throw e;
        }

      }
}
