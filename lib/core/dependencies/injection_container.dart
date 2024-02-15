import 'dart:developer';

import 'package:get_it/get_it.dart';

import '../../features/home/data/data_source/remote/firebase.dart';
import '../../features/home/data/repository/home_rep_impl.dart';
import '../../features/home/domain/repo/home_repository.dart';
import '../../features/home/domain/usecase/get_products.dart';
import '../../features/home/presentation/controllers/home_controller.dart';

final GetIt serviceLocator = GetIt.instance;

class InjectionContainer {
  //
  Future<void> injectDependencies() async {
    serviceLocator.registerSingleton<FireBaseService>(FireBaseService());

    serviceLocator.registerSingleton<HomeRepository>(
        HomeRepositoryImpl(serviceLocator()));

    serviceLocator.registerSingleton<GetProductUseCase>(
        GetProductUseCase(serviceLocator()));

    serviceLocator
        .registerSingleton<HomeController>(HomeController(serviceLocator()));

    await GetIt.instance.call<HomeController>().updateGetProductLists();
    GetIt.instance.call<HomeController>().update();
    log("Called the function");
  }
}
