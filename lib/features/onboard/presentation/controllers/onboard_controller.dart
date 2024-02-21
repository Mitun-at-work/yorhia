import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../db/local/hive_auth_manager.dart';
import '../../../../db/remote/firebase_manage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class OnboardController extends GetxController {
  late AuthenticationManager authManager;
  late FireBaseManager fireBaseManager;

  @override
  void onInit() async {
    super.onInit();
    await isUserAuthenticated();
  }

  OnboardController(this.authManager, this.fireBaseManager);

  Future<void> authenticateUser() async {
    final bool isSucessfullyAuthorised =
        await fireBaseManager.authoriseUserEmail();

    if (isSucessfullyAuthorised) {
      await Future.delayed(const Duration(seconds: 5));
      // Get.offAndToNamed(AppRouteNames.homeRoute);
    } else {}
  }

  Future<void> isUserAuthenticate() async {
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

  Future<bool> isUserAuthenticated() async {
    final bool isAuthenticated = await authManager.isUserAuthenticated();
    return isAuthenticated;
  }
}
