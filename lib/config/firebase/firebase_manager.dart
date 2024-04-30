import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseManager {
  // Firebase Instance
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Add a document to a collection
  Future<void> addDocumentToCollection(
      Map<String, dynamic> documentMap, String collectionName) async {
    // Refering the Collection Reference
    final CollectionReference collectionReference =
        firestore.collection(collectionName);

    await collectionReference.add(documentMap);
  }
  
  // Fetch a specific document id from a collection
  Future<Either<Map<String, dynamic>, void>> fetchDocumentIdFromCollection(
      String documentId, collectionName) async {
    // Reffering the Document
    final DocumentReference documentReference =
        firestore.collection(collectionName).doc(documentId);

    // Fetch Reffered Document from the colllection
    final DocumentSnapshot document = await documentReference.get();

    if (document.exists) {
      // Document as Map<String, dynamic>
      return Left(document as Map<String, dynamic>);
    }
    // Document Does'nt Exist
    return const Right(null);
  }

  // Fetch a entire collection from FireBase
  Future<QuerySnapshot> fetchCollection(String collectionName) async {
    // Fetching QuerySnapShot from FireBase
    QuerySnapshot querySnapshot =
        await firestore.collection(collectionName).get();

    return querySnapshot;
  }

  // Google SignIn Instance & Authenticate User
  Future<Map<String, String>> authenticateGmail() async {
    GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleuser?.authentication;

    // Credential Instance
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    log(userCredential.toString());

    return {'user_mail': userCredential.credential.toString()};
  }
}
