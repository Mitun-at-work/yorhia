// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yoriha/config/models/freebe_entity.dart';
import 'package:yoriha/db/remote/firebase_utilities.dart';
import 'package:yoriha/features/home/model/product_mode.dart';

final FireBaseOperations fireBaseOperations = FireBaseOperations();

class FirebaseRepository {
  // Convert to Map
  Future<List<Map<String, dynamic>>> convertSnapshotToMap(
      QuerySnapshot snapshot) async {
    List<Map<String, dynamic>> documentSnapShot = [];
    if (snapshot.docs.isNotEmpty) {
      for (var doc in snapshot.docs) {
        Map<String, dynamic> docData = doc.data() as Map<String, dynamic>;
        documentSnapShot.add(docData);
      }
    }
    return documentSnapShot;
  }

// Get Update User Request
  Future<void> updateUserRequest(Map<String, dynamic> jsonRequest) async {
    await fireBaseOperations.insertDocumentinCollection(jsonRequest, "order");
  }

// Get FreeBies from cloud
  Future<FreeBiesEntity?> getFreebies() async {
    final fetchedData = await fireBaseOperations.fetchCollection('freebies');

    final List<Map<String, dynamic>> convertedData =
        await convertSnapshotToMap(fetchedData);

    if (convertedData[0]['lowerBound'] < 80 &&
        80 < convertedData[0]['upperBound']) {
      //

      List<ProductModel> productModels = [];

      var dict = convertedData[0]['productList'];

      log("The dict type is $dict");

      try {
        for (var jsonResponse in dict) {
          productModels.add(
            ProductModel.fromMap(jsonResponse),
          );
        }
      } catch (error) {
        log(error.toString());
      }

      log("Frebies Entity Converted");

      return FreeBiesEntity(
        upperBoundNumber: convertedData[0]['upperBound'],
        lowerBoundNumber: convertedData[0]['lowerBound'],
        productList: productModels,
      );

      //

      //
    } else {
      return null;
    }
  }
}
