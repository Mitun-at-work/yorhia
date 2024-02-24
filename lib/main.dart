import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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

  // Dependency Injection
  await dependenciesContainer.inject();

  runApp(
    ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getTheme,
        color: Colors.orange,
        routes: appRoutes.getRoutes(),
        initialRoute: AppRouteNames.onboardRoute,
      ),
    ),
  );
}
