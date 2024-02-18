import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoriha/core/dependencies/injection_container.dart';
import 'package:yoriha/features/onboard/presentation/controllers/onboard_controller.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardController onboardController =
        Get.put(serviceLocator<OnboardController>());

    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Comple",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
