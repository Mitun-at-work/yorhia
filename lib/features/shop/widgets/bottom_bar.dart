import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/routes/app_routes.dart';
import '../controller/shop_controller.dart';

class OrderBottomBar extends StatelessWidget {
  const OrderBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.maxFinite.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: .1,
            color: Colors.grey.withOpacity(.1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GetBuilder<ShopController>(builder: (controller) {
              return Text(
                controller.orderTotal.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            TextButton(
              onPressed: () => Get.toNamed(AppRouteNames.paymentPage),
              child: const Text(
                "Check Out",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
