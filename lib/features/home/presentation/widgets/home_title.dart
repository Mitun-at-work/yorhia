import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:yoriha/features/home/presentation/controller/page_controller.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<ScreenController>(builder: (
      controller,
    ) {
      return Text(
        controller.pageIdx.value == 0
            ? "Welocme Mitun!"
            : controller.pageIdx.value == 1
                ? "Profile Screen"
                : "My Orders",
      );
    });
  }
}
