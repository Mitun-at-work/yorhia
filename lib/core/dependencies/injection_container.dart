import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../db/local/hive_auth_manager.dart';
import '../../db/remote/firebase_repository.dart';
import '../../features/home/controller/home_controller.dart';
import '../../features/onboard/presentation/controllers/onboard_controller.dart';
import '../../firebase_options.dart';
import '../constants/constants.dart';
import '../routes/app_routes.dart';

final serviceLocator = GetIt.instance;

class InjectionDependencies {
  String appRoute = AppRouteNames.onboardRoute;

  Future<void> injectDependencies() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    // Get Directory Information
    final directory = await getApplicationDocumentsDirectory();

    //
    constantsHolder.downloadDirectory = directory.path;

    // Hive Initialisation
    Hive.init(directory.path);

    // FireBase Manager for pushing & retrieving data from cloud
    serviceLocator.registerFactory(() => FirebaseRepository());

    // Controller Injections
    serviceLocator.registerFactory(() => HomeController(serviceLocator()));

    serviceLocator.registerFactory(() => AuthenticationManager());

    serviceLocator.registerFactory(
        () => OnboardController(serviceLocator(), serviceLocator()));

    final bool isAuthenticated =
        await serviceLocator<OnboardController>().isUserAuthenticated();

    if (isAuthenticated) appRoute = AppRouteNames.homeRoute;
  }
}
