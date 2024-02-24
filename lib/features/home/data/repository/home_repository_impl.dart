import 'package:yoriha/features/home/data/data_src/remote/remote_home_data.dart';

import '../../domain/entity/product_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../model/product_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl(this.homeRemoteDataSource);

  @override
  Future<List<ProductEntity>> fetchRationsCollection() async {
    final List<ProductEntity> productEntities = [];

    final List<ProductModel> productModels =
        await homeRemoteDataSource.fetchRationsCollection();

    for (ProductModel productModel in productModels) {
      productEntities.add(ProductEntity.fromProductModel(productModel));
    }

    return productEntities;
  }
}
