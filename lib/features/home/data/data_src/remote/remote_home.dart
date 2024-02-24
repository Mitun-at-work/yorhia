import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../config/firebase/firebase_manager.dart';
import '../../../../../config/network/network_manager.dart';
import '../../model/product_model.dart';
import 'remote_home_data.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  // Dependencies
  FirebaseManager firebaseManager;
  NetworkManager networkManager;

  // Initialiser
  HomeRemoteDataSourceImpl(this.firebaseManager, this.networkManager);

  @override
  Future<List<ProductModel>> fetchRationsCollection() async {
    // ProductModel List
    final List<ProductModel> productModels = [];

    if (await networkManager.isConnected() == false) return productModels;

    final QuerySnapshot collectionSnapshot =
        await firebaseManager.fetchCollection('freebies');

    final List<QueryDocumentSnapshot> queryDocumentSnapshots =
        collectionSnapshot.docs;

    try {
      // Checking for lowerBound & upperBound should be implemented

      // Converting the Snaphsot Instance
      final Map<String, dynamic> querySnapshotInstance =
          queryDocumentSnapshots[0].data() as Map<String, dynamic>;

      // Fetching the product list from the ration collection
      final List productList = querySnapshotInstance['productList'];

      // Converting the productMap from the productList & converting it into ProductModel
      for (Map<String, dynamic> productMap in productList) {
        // Model Generation
        final ProductModel productModel = ProductModel.fromMap(productMap);

        // Storing the Product Model in the List<ProductModel>
        productModels.add(productModel);
      }

      return productModels;

      // return fetchProductEntity;
    } catch (error) {
      return productModels;
    }
  }
}
