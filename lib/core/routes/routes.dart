import 'package:flutter/material.dart';
import 'package:yorhia/features/profile/presentation/profile_screen.dart';
import 'package:yorhia/test.dart';

import '../../features/home/presentation/pages/home.dart';
import '../../features/onboard/presentation/pages/onboard.dart';
import '../../features/shop/presentation/shop.dart';
import 'app_routes.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      AppRouteNames.homeRoute: (context) => const HomeScreen(),
      AppRouteNames.shopRoute: (context) => const ShopScreen(),
      AppRouteNames.onboardRoute: (context) => const OnboardScreen(),
      AppRouteNames.profilePage: (context) => const ProfilScreen(),
      AppRouteNames.testPage: (context) =>  SignInDemo(),
    };
  }
}
