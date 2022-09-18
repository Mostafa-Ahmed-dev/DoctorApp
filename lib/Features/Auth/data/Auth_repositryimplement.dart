import 'package:doctor/Features/Auth/domain/Auth_repostiry.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class AuthRepositryImpl extends AuthRepositry {
  @override
  Future SignUpWithEandp(
      {required String email, required String password}) async {
    var auth = FirebaseAuth.instance;
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future SignInWithEandP(
      {required String email, required String password}) async {
    var auth = FirebaseAuth.instance;
    UserCredential userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
