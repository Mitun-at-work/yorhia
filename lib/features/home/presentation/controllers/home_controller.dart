import 'dart:developer';

import 'package:get/get.dart';

import '../../domain/entity/product_entity.dart';
import '../../domain/usecase/get_products.dart';

class HomeController extends GetxController {
  // UseCase registartion
  final GetProductUseCase getProductUseCase;

  // Product Entity Model Holders
  List<ProductEntity> productEntityList = <ProductEntity>[
    ProductEntity(
      productName: "Seesame Oil",
      productImgLink: "No link",
      productQuantity: "270 mg",
      productPrice: "500",
    )
  ].obs;

  HomeController(this.getProductUseCase);

  @override
  void onInit() async {
    super.onInit();
    updateGetProductLists();
    update();
    log("Updated");
  }

  Future<void> updateGetProductLists() async {
    productEntityList = await getProductUseCase(params: [int, int]);
    log(productEntityList.toString());
    log("It is Done");
    update();
  }
}
