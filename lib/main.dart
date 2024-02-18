import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yoriha/core/dependencies/injection_container.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/routes.dart';
import 'core/theme/theme.dart';

void main() async {
  await InjectionDependencies().injectDependencies();

  runApp(
    ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getTheme,
        routes: AppRoutes().getRoutes(),
        initialRoute: AppRouteNames.paymentPage,
      ),
    ),
  );
}
