import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../config/auth/auth.dart';
import '../../config/firebase/firebase.dart';
import '../../config/hive/hive.dart';
import '../../features/onboard/data/repository/onboard_repository_impl.dart';
import '../../features/onboard/domain/repository/onboard_repository.dart';
import '../../features/onboard/domain/usecase/authenticate_user.dart';
import '../../features/onboard/domain/usecase/register_email.dart';
import '../../features/onboard/presentation/controllers/onboard_controller.dart';
import '../../firebase_options.dart';
import '../routes/app_routes.dart';

final serviceLocator = GetIt.instance;

class InjectionDependencies {
  String appRoute = AppRouteNames.onboardRoute;

  Future<void> injectManager() async {
    // Firebase Manager
    serviceLocator.registerSingleton<FirebaseManager>(FirebaseManager());

    // Hive Manager
    serviceLocator.registerSingleton<HiveManger>(HiveManger());

    // Authentication Manger
    serviceLocator.registerSingleton<Auth>(Auth(serviceLocator()));
  }

  Future<void> initialiseDB() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

// Inject Getx Controllers
  Future<void> injectGetControllers() async {
    Get.put(OnboardController(serviceLocator()));
  }

  //
  Future<void> injectRepository() async {
    serviceLocator.registerSingleton<OnboardRepository>(
      OnboardRepositoryImpl(
        serviceLocator<Auth>(),
        serviceLocator<FirebaseManager>(),
        serviceLocator<HiveManger>(),
      ),
    );
  }

  //
  Future<void> injectUseCases() async {
    serviceLocator.registerSingleton<RegisterEmailUseCase>(
        RegisterEmailUseCase(serviceLocator()));

    serviceLocator.registerSingleton<AuthenticateUserCase>(
        AuthenticateUserCase(serviceLocator()));
  }

  Future<void> inject() async {
    await injectManager();
    await initialiseDB();
    await injectRepository();
    await injectUseCases();
    await injectGetControllers();
  }
}
