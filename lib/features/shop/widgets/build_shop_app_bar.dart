import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/shop_controller.dart';

AppBar buildShopAppBar() {
  return AppBar(
    elevation: 1,
    title: const Text("Place Order"),
    actions: [
      GetBuilder<ShopController>(
        builder: (controller) {
          return Text(
            controller.cartItmes.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          );
        },
      ),
    ],
  );
}
