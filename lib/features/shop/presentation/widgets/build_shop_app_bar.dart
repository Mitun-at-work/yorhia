import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/shop_controller.dart';

AppBar buildShopAppBar() {
  return AppBar(
    elevation: 1,
    title: const Text("Place Order"),
    actions: [
      GetBuilder<ShopController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Text(
              controller.cartItmes.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          );
        },
      ),
    ],
  );
}
