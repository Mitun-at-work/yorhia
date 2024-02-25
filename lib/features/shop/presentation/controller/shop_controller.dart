import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import '../../../../config/storage/storage.dart';
import '../../../home/domain/entity/product_entity.dart';
import '../../domain/entity/order_entity.dart';
import '../../domain/usecase/place_order.dart';

class ShopController extends GetxController {
  // Initialiser
  final RunTimeStorageManager runTimeStorageManager;
  final PlaceOrderUseCase placeOrderUseCase;

  ShopController(this.runTimeStorageManager, this.placeOrderUseCase);

  // Observable Variables
  RxInt cartItmes = 0.obs;
  RxList productEntity = <ProductEntity>[].obs;
  RxList productIsSelected = <bool>[].obs;
  RxList productQuantity = <int>[].obs;
  RxDouble orderTotal = 0.0.obs;

  @override
  void onInit() async {
    await fetchProducts();
    update();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    // Request Cached Data from the RunTime Cache Network
    final cacheResult =
        await runTimeStorageManager.fetchDataRuntime('product_list');

    cacheResult.fold(
      (left) => productEntity.value = left,
      (r) => null,
    );

    // Iterate the result
    for (ProductEntity _ in productEntity) {
      productIsSelected.add(false);
      productQuantity.add(0);
    }
  }

  void updateProductSelected(int index, int quantity) {
    if (productIsSelected[index]) {
      cartItmes.value--;
      orderTotal.value -= productEntity[index].productPrice;
    } else {
      cartItmes.value++;
      orderTotal.value += productEntity[index].productPrice;
    }
    productIsSelected[index] = !productIsSelected[index];
    update();
  }

  Future<void> processPayments() async {}

  Future<void> calculateTotal() async {}

  // OrderEntity generateOrderEntity() {
  //   // Random Number
  //   final String randomOrderId =
  //       DateTime.now().millisecondsSinceEpoch.toString();

  //   // Order Products Generation
  //   final List<String> orderedProducts = [];

  //   for (ProductEntity entity in productEntity) {
  //     orderedProducts.add("${entity.productName} : ${entity.productQuantity}g");
  //   }

  //   // Date Time Generation
  //   final DateTime dateTime = DateTime.now();

  //   final String orderRequestDate =
  //       "${dateTime.day}/${dateTime.month}/${dateTime.year}";

  //   final String orderRequestTime = "${dateTime.hour}:${dateTime.minute}";

  //   // Order Payment Id

  //   const String paymentId = "";

  //   // Order Entity
  //   // return OrderEntity(
  //   //   orderId: randomOrderId,
  //   //   orderDate: orderRequestDate,
  //   //   orderTime: orderRequestTime,
  //   //   orderValue: orderTotal.value,
  //   //   orderProducts: orderedProducts,
  //   //   orderPaymentId: paymentId,
  //   // );
  // }

  Future<void> executeOrder() async {
    // OrderEntity orderEntity = generateOrderEntity();
    // await placeOrderUseCase(params: orderEntity);
  }
}
