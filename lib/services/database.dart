import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tsukimon/controllers/userController.dart';
import 'package:tsukimon/models/user.dart';

class DataBase {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  CollectionReference<Map<String, dynamic>> users =
      FirebaseFirestore.instance.collection('userGroup');
  CollectionReference<Map<String, dynamic>> userTarget =
      FirebaseFirestore.instance.collection('userTargetGroup');
  var firebaseUser = FirebaseAuth.instance.currentUser;
  UserController usercontroller = Get.put(UserController());

  Future<bool> createNewUser(UserModel user) async {
    try {
      await _firestore.collection("users").doc(user.id).set({
        "displayName": user.displayName,
        "email": user.email,
        "phoneNumber": user.phoneNumber,
        'fname': user.fname,
        'lname': user.lname,
        'address': user.address,
        'state': user.state,
        'city': user.city,
        'dob': user.dob,
        'zip': user.zip,
        'country': user.country,
        "image_url": ""
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<UserModel> getUser(String uid) async {
    try {
      DocumentSnapshot _doc =
          await _firestore.collection("users").doc(uid).get();
      return UserModel.fromDocumentSnapshot(doc: _doc);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
