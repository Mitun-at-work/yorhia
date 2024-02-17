import 'dart:developer';

import 'package:get/get.dart';
import 'package:yoriha/core/constants/constants.dart';
import 'package:yoriha/features/home/model/product_mode.dart';

class ShopController extends GetxController {
  RxList productModels = <ProductModel>[].obs;
  RxList productIsSelected = <bool>[].obs;

  //
  @override
  void onInit() {
    productModels.value = constantsHolder.fetchedData;
    log(productModels.toString());
    super.onInit();
  }
}
