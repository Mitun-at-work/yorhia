import 'package:flutter/material.dart';
import 'package:yoriha/components/Home/carousel_title.dart';
import 'package:yoriha/components/Home/category_title.dart';
import 'package:yoriha/components/Home/navbar_build.dart';
import 'package:yoriha/components/Home/search_bar.dart';
import 'package:yoriha/components/Home/shop_carousel.dart';
import 'package:yoriha/components/Home/trending_carousel.dart';
import 'package:yoriha/theme/colors.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: appBarColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        bottomNavigationBar: biuldNav(),
        backgroundColor: bodyColor,
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Body(),
        ),
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
    return Column(
      children: const [
        CustomSearchBar(),
        CarouselTitle(),
        TrendingCarousel(),
        CategoryTitle(),
        ShopCarousel(),
      ],
    );
  }
}
