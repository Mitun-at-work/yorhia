import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoriha/core/dependencies/injection_container.dart';
import 'package:yoriha/core/generic/firebase_manage.dart';
import 'package:yoriha/core/routes/app_routes.dart';
import 'package:yoriha/features/home/controller/home_controller.dart';
import 'package:yoriha/features/home/model/product_mode.dart';
import 'package:yoriha/features/home/presentation/widgets/home_banner.dart';
import 'package:yoriha/features/home/presentation/widgets/home_loading_state.dart';
import '../widgets/home_product_carousel.dart';
import '../widgets/home_title_tile.dart';
import '../widgets/shop_available_announcement.dart';

final HomeController controller =
    Get.put(HomeController(serviceLocator<FireBaseManager>()));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Welcome Mitun !"),
      ),
      body: controller.obx(
        onLoading: const HomeLoadingState(isLoading: true),
        onEmpty: const HomeLoadingState(isLoading: false),
        onError: (error) {
          return const CircleAvatar();
        },
        (state) {
          if (state != null) {
            return HomeSuccessState(state: state);
          }
          return const SizedBox();
        },
      ),
    );
  }
}

class HomeSuccessState extends StatelessWidget {
  const HomeSuccessState({
    super.key,
    required this.state,
  });

  final List<ProductModel> state;

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
