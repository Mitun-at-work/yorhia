import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../db/local/hive_auth_manager.dart';
import '../../db/remote/firebase_manage.dart';
import '../../features/home/controller/home_controller.dart';
import '../../features/onboard/presentation/controllers/onboard_controller.dart';
import '../constants/constants.dart';

final serviceLocator = GetIt.instance;

class InjectionDependencies {
  Future<void> injectDependencies() async {
    // Get Directory Information
    final directory = await getApplicationDocumentsDirectory();

    //
    constantsHolder.downloadDirectory = directory.path;

    // Hive Initialisation
    Hive.init(directory.path);

    // FireBase Manager for pushing & retrieving data from cloud
    serviceLocator.registerFactory(() => FireBaseManager());

    // Controller Injections
    serviceLocator.registerFactory(() => HomeController(serviceLocator()));

    serviceLocator.registerFactory(() => AuthenticationManager());

    serviceLocator.registerFactory(
        () => OnboardController(serviceLocator(), serviceLocator()));
  }
}
