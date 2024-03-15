import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_store/modules/Register/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


class RegistrationController extends ChangeNotifier{
  FirebaseAuth auth=  FirebaseAuth.instance;
  registerUser({required String name,required String email,required String password})async{
try {
      final credential =
          await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log(credential.toString());
      await saveUser(UserModel(uid: credential.user!.uid, email: email, name: name));
      notifyListeners();
     
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }


saveUser(UserModel user)async{
  try{
CollectionReference users = FirebaseFirestore.instance.collection('users');
  await users.doc(user.uid).set({
    'name':user.name,
    'email': user.email,
  });
  }
  catch(e){
log(e.toString());
  }
 
}
}


  
