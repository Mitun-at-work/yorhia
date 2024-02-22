import 'package:flutter/material.dart';
import '../../features/onboard/presentation/pages/onboard.dart';
import '../../features/shop/presentation/shop.dart';
import 'app_routes.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      AppRouteNames.homeRoute: (context) => const HomeScreen(),
      AppRouteNames.shopRoute: (context) => const ShopScreen(),
      AppRouteNames.onboardRoute: (context) => const OnboardScreen(),
      AppRouteNames.paymentPage: (context) => const Scaffold(),
    };
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
