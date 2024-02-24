import '../entity/product_entity.dart';

abstract class HomeRepository {
  Future<List<ProductEntity>> fetchRationsCollection();
}
