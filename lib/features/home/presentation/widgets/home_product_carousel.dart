import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/dependencies/injection_container.dart';
import '../controllers/home_controller.dart';
import 'home_product_card.dart';

class HomeProductCarousel extends StatefulWidget {
  const HomeProductCarousel({super.key});

  @override
  State<HomeProductCarousel> createState() => _HomeProductCarouselState();
}

class _HomeProductCarouselState extends State<HomeProductCarousel> {
  late HomeController homeController;

  @override
  void initState() {
    homeController = GetIt.instance<HomeController>();
    homeController.updateGetProductLists();
    homeController.update();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    serviceLocator<HomeController>().update();

    print("Rebuilding");
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        itemCount: homeController.productEntityList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomeProductCard(
            productModel: homeController.productEntityList[index],
          );
        },
      ),
    );
  }
}
