import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home.dart';
import '../../features/onboard/presentation/pages/onboard.dart';
import '../../features/shop/presentation/pages/shop.dart';
import 'app_routes.dart';

Map<String, WidgetBuilder> get getRoutes => <String, WidgetBuilder>{
      AppRoutes.homeRoute: (context) => const HomeScreen(),
      AppRoutes.shopRoute: (context) => const ShopPage(),
      AppRoutes.onboardRoute: (context) => const OnboardScreen()
    };
