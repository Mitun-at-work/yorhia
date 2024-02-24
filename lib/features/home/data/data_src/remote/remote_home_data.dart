import '../../model/product_model.dart';

abstract class HomeRemoteDataSource {
  //
  Future<List<ProductModel>> fetchRationsCollection();
}
