import 'dart:developer';

import 'package:get/get.dart';

import '../../../config/models/freebe_entity.dart';
import '../../../core/constants/constants.dart';
import '../../../db/remote/firebase_repository.dart';
import '../../shop/controller/shop_controller.dart';
import '../model/product_mode.dart';

class HomeController extends GetxController
    with StateMixin<List<ProductModel>> {
  final FirebaseRepository fireBaseRepository;

  HomeController(this.fireBaseRepository);

  // HomeController Initialisation
  @override
  void onInit() async {
    super.onInit();
    await fetchProducts();
  }

  Future<void> fetchProducts() async {
    List<ProductModel> productModel = [];

    // You can  fetch products from remote server

    final FreeBiesEntity? response = await fireBaseRepository.getFreebies();

    log("The response recieved in the controller $response");

    if (response != null) {
      change(null, status: RxStatus.empty());
    } else {
      productModel = response!.productList;

      constantsHolder.fetchedData = productModel;

      change(productModel, status: RxStatus.success());

      Get.put(ShopController());

      await Future.delayed(const Duration(seconds: 4));
    }
  }
}
