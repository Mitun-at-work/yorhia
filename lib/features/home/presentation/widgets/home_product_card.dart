import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entity/product_entity.dart';
import '../controllers/home_controller.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
    required this.productModel,
  });

  final ProductEntity productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await GetIt.instance<HomeController>().updateGetProductLists();
        log("Completed");
      },
      child: Container(
        width: 150.w,
        margin: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              height: 150.h,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(.3),
                borderRadius: BorderRadius.all(Radius.circular(4.r)),
              ),
            ),
            Text(
              productModel.productName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              productModel.productQuantity,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              productModel.productPrice,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 19.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
