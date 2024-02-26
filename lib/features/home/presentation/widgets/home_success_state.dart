import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoriha/features/order/presentation/order.dart';
import 'package:yoriha/features/profile/presentation/profile_screen.dart';
import '../../../../core/constants/bottom_navigation_bar.dart';
import '../controller/page_controller.dart';
import 'home_product_showcase.dart';

import '../../domain/entity/product_entity.dart';

class HomeSuccessState extends StatelessWidget {
  const HomeSuccessState({
    super.key,
    required this.state,
  });

  final List<ProductEntity> state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: GetX<ScreenController>(builder: (
          controller,
        ) {
          return Text(
            controller.pageIdx.value == 0 ? "Welocme Mitun!" : "Profile Screen",
          );
        }),
      ),
      bottomNavigationBar: buildBottomNavigationButton(),
      body: GetX<ScreenController>(builder: (controller) {
        return Column(
          children: [
            controller.pageIdx.value == 0
                ? HomeProdutDisplay(state: state)
                : controller.pageIdx.value == 1
                    ? const ProfilScreen()
                    : const OrderScreen(),
          ],
        );
      }),
    );
  }
}
