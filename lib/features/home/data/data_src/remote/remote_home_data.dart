import 'package:yoriha/features/home/data/model/product_model.dart';

abstract class HomeRemoteDataSource {
  //
  Future<List<ProductModel>> fetchRationsCollection();
}
