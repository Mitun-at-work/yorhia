import 'package:get/get.dart';
import 'package:yoriha/core/generic/firebase_manage.dart';
import 'package:yoriha/core/generic/hive_manager.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class OnboardController extends GetxController {
  late AuthenticationManager authManager;
  late FireBaseManager fireBaseManager;

  OnboardController(this.authManager, this.fireBaseManager);

  Future<void> authenticateUser() async {
    await fireBaseManager.authoriseUserEmail();
  }

  Future<void> isUserAuthenticated() async {
    final bool isAuthenticated = await authManager.isUserAuthenticated();
    if (!isAuthenticated) {
      GSignin(BuildContext context) async {
        GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
        GoogleSignInAuthentication? googleAuth =
            await googleuser?.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        //Navigator.push(
        //context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    }
  }
}
