import '../../../../config/storage/storage.dart';
import '../../domain/entity/product_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../data_src/remote/remote_home_data.dart';
import '../model/product_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  // Dependencies
  final HomeRemoteDataSource homeRemoteDataSource;

  final RunTimeStorageManager runTimeStorageManager;

  HomeRepositoryImpl(
    this.homeRemoteDataSource,
    this.runTimeStorageManager,
  );

  @override
  Future<List<ProductEntity>> fetchRationsCollection() async {
    final List<ProductEntity> productEntities = [];

    final List<ProductModel> productModels =
        await homeRemoteDataSource.fetchRationsCollection();

    for (ProductModel productModel in productModels) {
      productEntities.add(ProductEntity.fromProductModel(productModel));
    }

    runTimeStorageManager.cacheDataRuntime("product_list", productEntities);

    return productEntities;
  }
}
