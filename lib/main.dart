import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:yorhia/config/hive/hive_manager.dart';
import 'package:yorhia/features/auth/presentation/pages/mobile_number.dart';
import 'package:yorhia/features/home/presentation/pages/home.dart';

import 'core/dependencies/injection_container.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/routes.dart';
import 'core/theme/theme.dart';

Future<void> main() async {
  //Initialise Widgets
  WidgetsFlutterBinding.ensureInitialized();

  //
  final InjectionDependencies dependenciesContainer = InjectionDependencies();
  final AppRoutes appRoutes = AppRoutes();
  final HiveManager hiveManager = HiveManager();

  // Dependency Injection & Inversion
  await dependenciesContainer.inject();
  //
  await hiveManager.initializeBox();
  final bool isLoggedIn =
      Hive.box(hiveManager.boxName).get('isLoggedIn', defaultValue: false);

  runApp(
    ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: GetMaterialApp(
        home: isLoggedIn ? const HomeScreen() : const PhoneNumber(),
        debugShowCheckedModeBanner: false,
        theme: getTheme,
        routes: appRoutes.getRoutes(),
        initialRoute: AppRouteNames.onboardRoute,
      ),
    ),
  );
}
