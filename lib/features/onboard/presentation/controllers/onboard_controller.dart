import 'package:get/get.dart';

import '../../../../db/local/hive_auth_manager.dart';
import '../../../../db/remote/firebase_manage.dart';

class OnboardController extends GetxController {
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
      // Get.offAndToNamed(AppRouteNames.homeRoute);
    } else {}
  }

  Future<bool> isUserAuthenticated() async {
    final bool isAuthenticated = await authManager.isUserAuthenticated();
    return isAuthenticated;
  }
}
