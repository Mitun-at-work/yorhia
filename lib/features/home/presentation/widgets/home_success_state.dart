import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_routes.dart';
import '../../domain/entity/product_entity.dart';
import 'home_product_carousel.dart';
import 'home_title_tile.dart';
import 'shop_available_announcement.dart';

class HomeSuccessState extends StatelessWidget {
  const HomeSuccessState({
    super.key,
    required this.state,
  });

  final List<ProductEntity> state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ShopAnnouncement(),
        HomeTitleTile(
          tileHeading: "Shop Products",
          function: () => Get.toNamed(AppRouteNames.shopRoute),
        ),
        HomeProductCarousel(productModel: state),
      ],
    );
  }
}
