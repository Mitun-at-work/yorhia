import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yoriha/core/constants/app_themes.dart';
import 'package:yoriha/features/shop/controller/shop_controller.dart';

class ShopGridView extends StatelessWidget {
  const ShopGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(builder: (controller) {
      return GridView.builder(
        padding: EdgeInsets.only(top: 20.h, bottom: 100.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 240.h,
          crossAxisCount: 2,
          mainAxisSpacing: 20.h,
        ),
        itemCount: controller.productModels.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => controller.updateProductSelected(index),
            child: Container(
              padding: EdgeInsets.all(10.w),
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: controller.productIsSelected[index]
                    ? BoxSahdow.productSelectedBoxShadow
                    : BoxSahdow.defaultBoxShadow,
              ),
              child: Column(
                children: [
                  Container(
                    height: 140.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.withOpacity(.1),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                  ),
                  ListTile(
                    selected: controller.productIsSelected[index],
                    title: const Text("Wheat Oil"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("200mg"),
                        SizedBox(height: 5.h),
                        const Text("*200"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
