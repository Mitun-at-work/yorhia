import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:yorhia/config/hive/hive_manager.dart';
import 'package:yorhia/features/auth/presentation/pages/otp_screen.dart';
import 'package:yorhia/features/home/presentation/pages/home.dart';


class AuthController extends GetxController {
  String _verificationId = '';

  //
  RxString phoneNumber = ''.obs;
  RxString otp = ''.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final HiveManager hiveManager = HiveManager();

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void updateOTP(String value) {
    otp.value = value;
  }



  Future<void> verifyOTP(String otp) async {
    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: otp,
      );

      // Sign in with the credential
      UserCredential userCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      // Check if the user already exists
      if (userCredential.additionalUserInfo!.isNewUser) {
        // Navigate to user details filling page
        Get.to(const HomeScreen());
      } else {
        Get.to(const HomeScreen());
        hiveManager.loginUser();
        //       SharedPreferences prefs =await
        // SharedPreferences.getInstance() ;
        //     await prefs.setBool('loginStatus', true);
        //     Get.to(const ApplicationPage());
      }

      Get.snackbar(
        'Success',
        'OTP verification is Successful.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      // Handle authentication failure

      Get.snackbar('Error', 'Failed to verify OTP. Please try again.',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> sendOTP() async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber.value,
        verificationCompleted: (PhoneAuthCredential credential) async {
          
          await _auth.signInWithCredential(credential);
          // // Navigate to the next screen upon successful authentication
          Get.offNamed('/home');
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.snackbar(
            'Error',
            'Failed to verify phone number: ${e.message}',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        },

        //
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          Get.snackbar(
            'Success',
            'OTP has been send to ${phoneNumber.value}.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
        timeout: const Duration(seconds: 100), // Set timeout duration
        forceResendingToken: null, // Provide forceResendingToken if necessary
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to send OTP. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> resendOTP(String phoneNumber, int? resendToken) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          // print('Error: ${e.message}');
        },
        codeSent: (String verificationId, int? newResendToken) {
          // Update resendToken and navigate back to OTP page
          Get.to(OTPPage(phonenNumber: phoneNumber), arguments: {
            'verificationId': verificationId,
            'resendToken': newResendToken
          });
          Get.snackbar(
            'Success',
            'OTP has been resend to $phoneNumber.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
        timeout: const Duration(seconds: 100), // Change timeout if needed
        forceResendingToken: resendToken,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to resend OTP. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
