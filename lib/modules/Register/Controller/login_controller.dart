import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


class LoginController extends ChangeNotifier{
  final auth= FirebaseAuth.instance;
  login(String email,String password)async{
try {
  final credential = await auth.signInWithEmailAndPassword(
    email: email,
    password: password
  );
  log(credential.toString());
  notifyListeners();
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }
}