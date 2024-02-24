import 'dart:developer';

import 'package:get/get.dart';

import '../../../home/data/model/product_model.dart';

class ShopController extends GetxController {
  RxInt cartItmes = 0.obs;
  RxList productModels = <ProductModel>[].obs;
  RxList productIsSelected = <bool>[].obs;
  RxDouble orderTotal = 0.0.obs;

  //
  // @override
  // void onInit() {
  //   productModels.value = constantsHolder.fetchedData;
  //   for (ProductModel _ in constantsHolder.fetchedData) {
  //     productIsSelected.add(false);
  //   }
  //   super.onInit();
  // }

  void updateProductSelected(int index) {
    if (productIsSelected[index]) {
      cartItmes.value--;

      orderTotal.value -= productModels[index].productPrice;
    } else {
      cartItmes.value++;
      orderTotal.value += productModels[index].productPrice;
    }

    productIsSelected[index] = !productIsSelected[index];

    update();
    log("Updated Preferences");
  }

  void processPayments() {}

  void calculateTotal() {}
}
