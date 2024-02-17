import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoriha/features/home/model/product_mode.dart';

import 'home_product_card.dart';

class HomeProductCarousel extends StatefulWidget {
  const HomeProductCarousel({super.key});

  @override
  State<HomeProductCarousel> createState() => _HomeProductCarouselState();
}

class _HomeProductCarouselState extends State<HomeProductCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        // itemCount: state.productEntity.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomeProductCard(
              productModel: ProductModel(
            productName: "",
            productPrice: "10",
            productQuantity: "150ml",
            imgLink: "https",
          ));
        },
      ),
    );
  }
}
