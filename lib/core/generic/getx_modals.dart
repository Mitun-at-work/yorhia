import 'dart:developer';

import 'package:get/get.dart';

//
class GetXPopUp {
  Future<void> showSnackBar(
      String snackbarTitle, String snackbarMessage) async {
    Get.snackbar(
      snackbarTitle,
      snackbarMessage,
    );

    log("Showed SnackBar");
  }
}
