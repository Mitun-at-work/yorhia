import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yorhia/features/auth/presentation/controller/auth_controller.dart';
import '../../features/home/presentation/controller/page_controller.dart';
import '../../features/shop/data/data_src/remote/remote_shop_data_src.dart';
import '../../features/shop/data/data_src/remote/remote_shop_data_src_impl.dart';
import '../../features/shop/data/repository/shop_repository_impl.dart';
import '../../features/shop/domain/repository/shop_repository.dart';
import '../../features/shop/domain/usecase/place_order.dart';
import '../../config/network/network_manager.dart';
import '../../config/storage/storage.dart';
import '../../config/storage/storage_implementation.dart';
import '../../features/home/data/data_src/remote/remote_home.dart';
import '../../features/home/data/data_src/remote/remote_home_data.dart';
import '../../features/onboard/data/data_src/local/local_onboard_data_src.dart';
import '../../features/onboard/data/data_src/local/local_onboard_data_src_impl.dart';
import '../../features/onboard/data/data_src/remote/remote_onboard_data_src.dart';
import '../../features/onboard/data/data_src/remote/remote_onboard_data_src_impl.dart';

import '../../config/auth/auth.dart';
import '../../config/firebase/firebase_manager.dart';
import '../../config/hive/hive_manager.dart';
import '../../features/home/data/repository/home_repository_impl.dart';
import '../../features/home/domain/repository/home_repository.dart';
import '../../features/home/domain/usecase/fetch_products.dart';
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

  Future<void> injectServices() async {
    // Firebase Manager
    serviceLocator.registerSingleton<FirebaseManager>(FirebaseManager());

    // Hive Manager
    serviceLocator.registerSingleton<HiveManager>(HiveManager());

    // Authentication Manger
    serviceLocator.registerSingleton<Auth>(Auth(serviceLocator()));

    // Connectivity Manager
    serviceLocator.registerSingleton<Connectivity>(Connectivity());

    // Network Manager
    serviceLocator.registerSingleton<NetworkManager>(
      NetworkManager(),
    );

    // RunTime Storage Manager
    serviceLocator
        .registerSingleton<RunTimeStorageManager>(RunTimeStorageManagerImpl());
  }

  //
  Future<void> initialiseDB() async {
    // Fetch Application Directory
    final directory = await getApplicationDocumentsDirectory();

    // Initialise Hive
    Hive.init(directory.path);

    // Initialise FireBase
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

// Inject Getx Controllers
  Future<void> injectGetControllers() async {
    // Onboard Controller
    Get.put(OnboardController(serviceLocator()));

    // Screen Controller
    Get.put(ScreenController());

    // Auth controller
    Get.put(AuthController());
  }

  // Repository Injection
  Future<void> injectRepository() async {
    // Home Repository
    serviceLocator.registerSingleton<HomeRepository>(HomeRepositoryImpl(
      serviceLocator(),
      serviceLocator(),
    ));

    // Onboard Repository
    serviceLocator.registerSingleton<OnboardRepository>(OnboardRepositoryImpl(
      serviceLocator(),
      serviceLocator(),
    ));

    // Order Repository
    serviceLocator.registerSingleton<ShopRepo>(ShopRepoImpl(serviceLocator()));
  }

  // Local Data Source Injection
  Future<void> injectLocalDataSources() async {
    // Onboard Local Data Source
    serviceLocator.registerSingleton<OnboardLocalDataSource>(
      OnboardLocalDataSourceImpl(
        serviceLocator(),
        serviceLocator(),
        serviceLocator(),
      ),
    );
  }

  // Remote Data Source Injection
  Future<void> injectRemoteDataSources() async {
    // Onboard
    serviceLocator.registerSingleton<OnboardRemoteDataSource>(
      OnboardRemoteDataSourceImpl(
          serviceLocator(), serviceLocator(), serviceLocator()),
    );

    // Home
    serviceLocator.registerSingleton<HomeRemoteDataSource>(
        HomeRemoteDataSourceImpl(serviceLocator(), serviceLocator()));

    // Order
    serviceLocator.registerSingleton<ShopRemoteDataSrc>(
        ShopRemoteDataSrcImpl(serviceLocator()));
  }

  // Injects both Remote & Local Data Sources
  Future<void> injectDataSources() async {
    await injectLocalDataSources();
    await injectRemoteDataSources();
  }

  Future<void> injectUseCases() async {
    // Register Email UseCase [Onboard]
    serviceLocator.registerSingleton<RegisterEmailUseCase>(
        RegisterEmailUseCase(serviceLocator()));

    // Authenticate UseCase [Onboard]
    serviceLocator.registerSingleton<AuthenticateUserCase>(
        AuthenticateUserCase(serviceLocator()));

    // Fetch Product UseCase [Home]
    serviceLocator.registerSingleton<FetchProductsUseCase>(
        FetchProductsUseCase(serviceLocator()));

    // Place Order UseCase [Order]
    serviceLocator.registerSingleton<PlaceOrderUseCase>(
        PlaceOrderUseCase(serviceLocator()));
  }

  // Inject Container
  Future<void> inject() async {
    await initialiseDB();
    await injectServices();
    await injectDataSources();
    await injectRepository();
    await injectUseCases();
    await injectGetControllers();
  }
}
