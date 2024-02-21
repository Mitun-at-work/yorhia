import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/dependencies/injection_container.dart';
import 'core/routes/routes.dart';
import 'core/theme/theme.dart';

void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();

  //
  final InjectionDependencies dependenciesContainer = InjectionDependencies();
  final AppRoutes appRoutes = AppRoutes();

  await dependenciesContainer.injectDependencies();

  runApp(
    ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getTheme,
        routes: appRoutes.getRoutes(),
        initialRoute: dependenciesContainer.appRoute,
      ),
    ),
  );
}
