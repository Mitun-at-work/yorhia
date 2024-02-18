import 'package:get/get.dart';
import 'package:yoriha/core/generic/firebase_manage.dart';
import 'package:yoriha/core/generic/hive_manager.dart';

class OnboardController extends GetxController {
  late AuthenticationManager authManager;
  late FireBaseManager fireBaseManager;

  OnboardController(this.authManager, this.fireBaseManager);

  Future<void> authenticateUser() async {
    await fireBaseManager.authoriseUserEmail();
  }

  Future<void> isUserAuthenticated() async {
    final bool isAuthenticated = await authManager.isUserAuthenticated();
    if (!isAuthenticated) {
      await authenticateUser();
    }
  }
}
