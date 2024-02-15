import '../../domain/repo/home_repository.dart';
import '../data_source/remote/firebase.dart';
import '../model/product_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final FireBaseService fireBaseService;

  HomeRepositoryImpl(this.fireBaseService);

  @override
  Future<List<ProductModel>> getProducts() async {
    final List<ProductModel> productModels = [];
    final result = await fireBaseService.getUserCollection();
    for (Map<String, dynamic> jsonResponse in result) {
      productModels.add(ProductModel.frromJson(jsonResponse));
    }
    return productModels;
  }
}
