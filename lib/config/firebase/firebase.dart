import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseManager {
  // Add a document to a collection
  Future addDocumentToCollection(
      Map<String, dynamic> documentMap, String collectionName) async {}

  // Fetch a specific document id from a collection
  Future fetchDocumentIDFromCollection(
      String documentId, collectionName) async {}

  // Fetch a entire collection from FireBase
  Future fetchCollection(String collectionName) async {}

  Future<Map<String, dynamic>> authenticateGmail() async {
    // Google SignIn Instance & Authenticate User
    GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleuser?.authentication;

    // Credential Instance
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return {'user_mail': userCredential.credential};
  }
}
