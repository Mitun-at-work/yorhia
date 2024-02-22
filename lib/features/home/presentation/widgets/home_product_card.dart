import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_themes.dart';
import '../../data/model/product_mode.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                color: AppTheme.appHighLightColor.withOpacity(.1),
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
              productModel.productPrice.toString(),
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
