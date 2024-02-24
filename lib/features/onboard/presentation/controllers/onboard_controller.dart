import 'dart:developer';

import 'package:get/get.dart';

import '../../domain/usecase/register_email.dart';

class OnboardController extends GetxController {
  final RegisterEmailUseCase registerEmailUseCase;

  //
  OnboardController(this.registerEmailUseCase);

  Future<void> authenticateEmail() async {
    try {
      final result = await registerEmailUseCase();
      log(result.toString());
    } catch (error) {
      log(error.toString());
    }
  }
}
