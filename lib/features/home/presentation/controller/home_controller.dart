import 'package:get/get.dart';

import '../../domain/entity/product_entity.dart';
import '../../domain/usecase/fetch_products.dart';

class HomeController extends GetxController
    with StateMixin<List<ProductEntity>> {
  // Dependenecies
  final FetchProductsUseCase fetchProductsUseCase;

  HomeController(this.fetchProductsUseCase);

  @override
  void onInit() async {
    await fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    final List<ProductEntity> productEntityList = await fetchProductsUseCase();

    if (productEntityList.isEmpty) {
      change(null, status: RxStatus.empty());
    } else {
      change(productEntityList, status: RxStatus.success());
    }
  }
}
