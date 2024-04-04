import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/core/result.dart';
import 'package:hike/firebase/firebase_users.dart';

class AuthCubit extends Cubit<User?> {
  AuthCubit() : super(null);

  FirebaseAuth auth = FirebaseAuth.instance;

  FutureOr<Result> register(String username, String email, String pass) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      await credential.user?.updateDisplayName(username);
      log(credential.user!.uid);
      await FirebaseUsers.createUser(
          uid: credential.user!.uid,
          email: email,
          username: username,
          photoUrl: credential.user?.photoURL ?? '');
      emit(credential.user!);
      return Result.success();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Result.error('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return Result.error('The account already exists for that email.');
      }
      return Result.error(e.code);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result> login(String email, String pass) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );

      //getting user details
      await FirebaseUsers.getUser(uid: credential.user!.uid);
      emit(credential.user!);
      return Result.success();
    } on FirebaseAuthException catch (e) {
      return Result.error(e.code);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
