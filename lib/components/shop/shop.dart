import 'package:flutter/material.dart';
import 'package:yoriha/components/shop/product_banner.dart';
import 'package:yoriha/components/shop/shop_horiz.dart';
import 'package:yoriha/components/shop/text_cta.dart';
import 'package:yoriha/components/shop/top_bar.dart';
import 'package:yoriha/theme/colors.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: bodyColor,
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          TopBar(),
          TextCTA(),
          ProductBanner(),
          HorizontalCarousel(),
        ],
      ),
    );
  }
}
