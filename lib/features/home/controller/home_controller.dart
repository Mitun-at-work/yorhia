import 'dart:developer';

import 'package:get/get.dart';
import 'package:yoriha/core/constants/constants.dart';
import 'package:yoriha/core/generic/firebase_manage.dart';
import 'package:yoriha/features/home/model/product_mode.dart';
import 'package:yoriha/features/shop/controller/shop_controller.dart';

class HomeController extends GetxController
    with StateMixin<List<ProductModel>> {
  final FireBaseManager fireBaseManager;

  HomeController(this.fireBaseManager);

  // HomeController Initialisation
  @override
  void onInit() async {
    super.onInit();
    await fetchProducts();
  }

  Future<void> fetchProducts() async {
    final List<ProductModel> productModel = [];

    // You can  fetch products from remote server

    late List<Map<String, dynamic>> response;

    try {
      response = await fireBaseManager.getFreebies();
    } catch (e) {
      change(null, status: RxStatus.error());
    }

    for (Map<String, dynamic> element in response) {
      log(ProductModel.fromJson(element).toString());
      productModel.add(ProductModel.fromJson(
        element,
      ));
    }

    constantsHolder.fetchedData = productModel;

    change(productModel, status: RxStatus.success());
    log("Completed Fetching");

    Get.put(ShopController());
  }
}
