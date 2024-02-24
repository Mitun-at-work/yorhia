import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseManager {
  // Firebase Instance
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Add a document to a collection
  Future addDocumentToCollection(
      Map<String, dynamic> documentMap, String collectionName) async {}

  // Fetch a specific document id from a collection
  Future fetchDocumentIdFromCollection(
      String documentId, collectionName) async {}

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

    return {'user_mail': userCredential.credential.toString()};
  }
}
