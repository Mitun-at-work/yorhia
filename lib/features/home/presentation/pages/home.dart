import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/dependencies/injection_container.dart';
import '../controller/home_controller.dart';
import '../widgets/home_loading_state.dart';
import '../widgets/home_success_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController =
        Get.put(HomeController(serviceLocator()));

    return homeController.obx(
      onLoading: const HomeLoadingState(isLoading: true),
      onEmpty: const HomeLoadingState(isLoading: false),
      onError: (error) {
        return const CircleAvatar();
      },
      (state) {
        if (state != null) {
          return HomeSuccessState(state: state);
        }
        return const SizedBox();
      },
    );
  }
}
