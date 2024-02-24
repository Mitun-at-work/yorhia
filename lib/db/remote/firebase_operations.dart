import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

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
}
