import 'dart:developer';

import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../db/remote/firebase_manage.dart';
import '../../shop/controller/shop_controller.dart';
import '../model/product_mode.dart';

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

    await Future.delayed(const Duration(seconds: 10));

    change(productModel, status: RxStatus.success());

    Get.put(ShopController());
  }
}
