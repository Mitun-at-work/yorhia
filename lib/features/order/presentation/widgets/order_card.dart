import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yorhia/features/home/domain/entity/product_entity.dart';

import '../../../../core/constants/app_themes.dart';

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({
    super.key,
    required this.productEntity,
  });

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 150.w,
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
                productEntity.productName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const Text(
                  "2x Kg",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
