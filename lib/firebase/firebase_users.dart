import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUsers {
  static CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  static FutureOr<void> createUser(
      {required String uid,
      required String email,
      required String username,
      required String photoUrl}) async {
    final Map<String, String> user = {
      "uid": uid,
      "email": email,
      "username": username,
      "photoUrl": photoUrl,
    };

    try {
      await users.doc(uid).set(user);
      // log("User stored");
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<Object> getUser({required String uid}) async {
    try {
      DocumentSnapshot snapshot = await users.doc(uid).get();
      if (snapshot.exists) {
        log(snapshot.get("uid") +
            " " +
            snapshot.get("email") +
            " " +
            snapshot.get("username"));
        final Map<String, String> user = {
          "uid": snapshot.get("uid"),
          "email": snapshot.get("email"),
          "username": snapshot.get("username"),
        };
        return user;
      }
      return Exception("Could not get User details");
    } catch (e) {
      log(e.toString());
      return e;
    }
  }
}
