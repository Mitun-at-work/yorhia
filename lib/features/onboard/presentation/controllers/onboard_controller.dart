import 'dart:developer';

import 'package:get/get.dart';

import '../../domain/usecase/authenticate_user.dart';

class OnboardController extends GetxController {
  final AuthenticateUserCase authenticateUserCase;

  //
  OnboardController(this.authenticateUserCase);

  Future<void> authenticateEmail() async {
    log("Auth Manager");
    try {
      final result = await authenticateUserCase();
      log(result.toString());
    } catch (error) {
      log(error.toString());
    }
  }
}
