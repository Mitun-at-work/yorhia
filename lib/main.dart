import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/dependencies/injection_container.dart';
import 'core/routes/routes.dart';
import 'core/theme/theme.dart';
import 'features/home/presentation/pages/home.dart';

void main() async {
  await InjectionContainer().injectDependencies();
  // final homeController = InjectionContainer().serviceLocator<HomeController>();

  runApp(
    ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: getTheme,
        routes: getRoutes,
        initialRoute: "",
      ),
    ),
  );
}
