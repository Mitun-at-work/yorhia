import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_themes.dart';
import '../../domain/entity/product_entity.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
    required this.productModel,
  });

  final ProductEntity productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 160.w,
        margin:
            EdgeInsets.only(top: 10.h, left: 10.w, bottom: 5.h, right: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                productModel.productQuantity.toString(),
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
      ),
    );
  }
}
