import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String? displayName;
  String? email;
  String? phoneNumber;
  String? fname;
  String? lname;
  String? country;
  DateTime? dob;
  String? address;
  String? city;
  String? state;
  String? zip;
  // ignore: non_constant_identifier_names
  String? image_url;

  // ignore: non_constant_identifier_names
  UserModel({
    this.id,
    this.displayName,
    this.email,
    this.phoneNumber,
    this.fname,
    this.lname,
    this.address,
    this.state,
    this.city,
    this.country,
    this.dob,
    this.zip,
    this.image_url});

  UserModel.fromDocumentSnapshot({DocumentSnapshot? doc}) {
        id = doc!.id;
        displayName = doc["displayName"];
        email = doc["email"];
        phoneNumber = doc["phoneNumber"];
        fname = doc['fname'];
        lname = doc['lname'];
        address = doc['address'];
        state = doc['state'];
        city = doc['city'];
        dob = doc['dob'];
        zip = doc['zip'];
        country = doc['country'];
        image_url = doc["image_url"];
  }
}