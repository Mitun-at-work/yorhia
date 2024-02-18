import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoriha/features/shop/controller/shop_controller.dart';
import 'package:yoriha/features/shop/widgets/bottom_bar.dart';
import 'package:yoriha/features/shop/widgets/build_shop_app_bar.dart';
import 'package:yoriha/features/shop/widgets/shop_grid_view.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
