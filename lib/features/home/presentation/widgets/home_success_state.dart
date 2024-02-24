import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title: const Text("Welcome Mitun"),
      ),
      bottomNavigationBar: buildBottomNavigationButton(),
      body: GetX<ScreenController>(builder: (controller) {
        return Column(
          children: [
            controller.pageIdx.value == 0
                ? HomeProdutDisplay(state: state)
                : const SizedBox(),
          ],
        );
      }),
    );
  }
}
