import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUsers {
  static CollectionReference users =
      FirebaseFirestore.instance.collection('usersChats');

  static FutureOr<void> newUserChat(
      {required String currentUid, required String userId}) async {
    String chatId = currentUid.compareTo(userId) == 1
        ? currentUid + userId
        : userId + currentUid;

    try {
      await users.doc().set(chatId);
    } catch (e) {
      log(e.toString());
    }
  }
}
