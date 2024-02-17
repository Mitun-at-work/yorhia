import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoriha/features/shop/controller/shop_controller.dart';
import 'package:yoriha/features/shop/widgets/bottom_bar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text("Place Order"),
        ),
        bottomSheet: const OrderBottomBar(),
        body: GetBuilder<ShopController>(builder: (controller) {
          return ListView.builder(
            itemCount: controller.productModels.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                minVerticalPadding: 25,
                leading: const Text("Hello"),
                title: const Text("Crude Oil"),
                trailing: const Text("50"),
              );
            },
          );
        }));
  }
}
