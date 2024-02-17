import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList fetchedProductModel = [].obs;

  Future<void> fetchProductList() async {
    //

    fetchedProductModel.value = [];
  }
}
