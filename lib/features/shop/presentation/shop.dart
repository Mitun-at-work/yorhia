import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/dependencies/injection_container.dart';
import 'controller/shop_controller.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/build_shop_app_bar.dart';
import 'widgets/shop_grid_view.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShopController(serviceLocator(), serviceLocator()));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildShopAppBar(),
      bottomSheet: const OrderBottomBar(),
      body: GetBuilder<ShopController>(
        builder: (controller) {
          return const ShopGridView();
        },
      ),
    );
  }
}
