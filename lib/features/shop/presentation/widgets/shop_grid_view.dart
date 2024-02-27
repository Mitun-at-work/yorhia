import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_themes.dart';
import '../../../home/domain/entity/product_entity.dart';
import '../controller/shop_controller.dart';

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
        itemCount: controller.productEntity.length,
        itemBuilder: (context, index) {
          final ProductEntity productEntity = controller.productEntity[index];
          return GestureDetector(
            onTap: () {
              Get.defaultDialog(
                radius: 2,
                title: "Enter the quantity you would like to buy",
                content: const Column(
                  children: [
                    Text("In Grams"),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        autofocus: true,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixText: "grams",
                        ),
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
                actions: [],
              );

              // controller.updateProductSelected(index, 2);
            },
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
                      color: AppTheme.appHighLightColor.withOpacity(.1),
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    ),
                  ),
                  ListTile(
                    selected: controller.productIsSelected[index],
                    title: Text(productEntity.productName),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(top: 2.h, bottom: 10.h),
                        //   child: Text(productEntity.productQuantity.toString()),
                        // ),
                        Text(
                          productEntity.productPrice.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
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
