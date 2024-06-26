import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:handyman_user/controllers/db_controller.dart';
import 'package:handyman_user/shared_widget/show_snackbar.dart';

class AuthController extends ChangeNotifier {
  bool isLoading = false;

  set loading(value) {
    isLoading = value;
    notifyListeners();
  }

  //created an instance of firebase auth
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool?> userSignIn(context, {email, pass}) async {
    UserCredential? currentUser;

    loading = true;

    try {
      currentUser =
          await _auth.signInWithEmailAndPassword(email: email, password: pass);
      var userData =
          await DBController.getUserDetails(userid: currentUser.user!.uid);
      if (userData == null) {
        _auth.signOut();
        loading = false;
        showCustomSnackbar(context, "User Not Found!!");
        return false;
      } else {
        loading = false;
        showCustomSnackbar(context, "Login Successfully!!");
        return true;
      }
    } on FirebaseAuthException catch (e) {
      log(e.code, name: "Auth Exception");
    }

    loading = false;
  }

  Future<UserCredential?> userSignUp({email, pass, name}) async {
    loading = true;
    UserCredential? currentUser;
    try {
      currentUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: pass);
      DBController.storeUserDetails(
          email: email, name: name, uid: currentUser.user!.uid);
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
    loading = false;
    return currentUser;
  }
}
