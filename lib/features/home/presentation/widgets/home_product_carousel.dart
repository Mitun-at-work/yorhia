import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yoriha/core/routes/app_routes.dart';
import 'package:yoriha/features/home/model/product_mode.dart';

import 'home_product_card.dart';

class HomeProductCarousel extends StatelessWidget {
  const HomeProductCarousel({
    super.key,
    required this.productModel,
  });

  final List<ProductModel> productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRouteNames.shopRoute),
      child: SizedBox(
        height: 250.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productModel.length > 3 ? 3 : productModel.length,
          itemBuilder: (context, index) {
            return HomeProductCard(
              productModel: productModel[index],
            );
          },
        ),
      ),
    );
  }
}