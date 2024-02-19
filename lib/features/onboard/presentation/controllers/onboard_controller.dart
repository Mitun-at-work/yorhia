import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../db/local/hive_auth_manager.dart';
import '../../../../db/remote/firebase_manage.dart';

class OnboardController extends GetxController with StateMixin<bool> {
  late AuthenticationManager authManager;
  late FireBaseManager fireBaseManager;

  @override
  void onInit() async {
    super.onInit();
    await isUserAuthenticated();
  }

  OnboardController(this.authManager, this.fireBaseManager);

  Future<void> authenticateUser() async {
    final bool isSucessfullyAuthorised =
        await fireBaseManager.authoriseUserEmail();

    if (isSucessfullyAuthorised) {
      await Future.delayed(const Duration(seconds: 5));
      Get.offAndToNamed(AppRouteNames.homeRoute);
    } else {
      change(isSucessfullyAuthorised, status: RxStatus.success());
    }
  }

  Future<void> isUserAuthenticated() async {
    final bool isAuthenticated = await authManager.isUserAuthenticated();

    log("It is $isAuthenticated");

    if (!isAuthenticated) {
      log("Not Authorised");
      await authenticateUser();
    } else {
      change(false, status: RxStatus.success());
      await Future.delayed(const Duration(seconds: 1));
      // Get.offAndToNamed(AppRouteNames.homeRoute);
    }
  }
}
