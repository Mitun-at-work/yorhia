import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:yorhia/features/home/domain/entity/product_entity.dart';
import 'package:yorhia/features/home/presentation/controller/page_controller.dart';
import 'package:yorhia/features/home/presentation/widgets/home_product_showcase.dart';
import 'package:yorhia/features/order/presentation/order.dart';
import 'package:yorhia/features/profile/presentation/profile_screen.dart';

class HomeState extends StatelessWidget {
  const HomeState({super.key, required this.state});

  final List<ProductEntity> state;

  @override
  Widget build(BuildContext context) {
    return GetX<ScreenController>(
      builder: (controller) {
        return Column(
          children: [
            controller.pageIdx.value == 0
                ? HomeProdutDisplay(state: state)
                : controller.pageIdx.value == 1
                    ? const ProfilScreen()
                    : const OrderScreen(),
          ],
        );
      },
    );
  }
}
