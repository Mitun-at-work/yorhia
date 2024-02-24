import 'package:get/get.dart';

class ScreenController extends GetxController {
  RxInt pageIdx = 0.obs;

  void switchPage(int tarIdx) {
    pageIdx.value = tarIdx;
    update();
  }
}
