import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../core/dependencies/injection_container.dart';
import '../local/hive_auth_manager.dart';

class FireBaseOperations {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> fetchDocumentfromCollection(
      String documentId, String collectionName) async {
    try {
      DocumentSnapshot documentSnapshot =
          await _firestore.collection(collectionName).doc(documentId).get();
      if (documentSnapshot.exists) {
        // Document exists
        return true;
      } else {
        // Document does not exist
        return false;
      }
    } catch (e) {
      // Error occurred
      log('Error fetching document: $e');
      return false;
    }
  }

  Future fetchCollection(String collectionName) async {
    try {
      QuerySnapshot querySnapshot =
          await _firestore.collection(collectionName).get();

      log(querySnapshot.toString().toString());

      if (querySnapshot.docs.isNotEmpty) {
        return querySnapshot;
      } else {
        return false;
      }
    } catch (e) {
      log('Error fetching collection: $e');
    }
  }

  Future<bool> insertDocumentinCollection(
      Map<String, dynamic> jsonMap, String collectionName) async {
    try {
      await _firestore.collection(collectionName).add(jsonMap);
      // Document inserted successfully
      return true;
    } catch (e) {
      // Error occurred
      log('Error inserting document: $e');
      return false;
    }
  }

  Future<bool> authoriseUserEmail() async {
    // Firebase GAuth goes in the if condition
    GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleuser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    log(userCredential.toString());

    // If condition for succesfull Authorisation
    await serviceLocator<AuthenticationManager>().storeUserDate({
      "user_name": "Mitun Suresh",
      "ration_number": 12345,
    });

    return false;
  }
}
