import 'package:get_it/get_it.dart';
import 'package:yoriha/core/generic/firebase_manage.dart';
import 'package:yoriha/features/home/controller/home_controller.dart';

final serviceLocator = GetIt.instance;

class InjectionDependencies {
  Future<void> injectDependencies() async {
    serviceLocator.registerFactory(() => FireBaseManager());

    serviceLocator.registerFactory(() => HomeController(serviceLocator()));
  }
}
