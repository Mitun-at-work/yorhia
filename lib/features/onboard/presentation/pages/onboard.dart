import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/dependencies/injection_container.dart';
import '../controllers/onboard_controller.dart';
import '../widgets/onboard_on_loading.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardController onboardController =
        Get.put(serviceLocator<OnboardController>());
    // Scafolld
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("LogIn to MyRation App"),
      ),
      body: SafeArea(
        child: onboardController.obx(
          onLoading: const OnboardOnLoadingScreen(),
          onError: (error) {
            return const CircularProgressIndicator();
          },
          (state) {
            if (state != null) {
              if (state) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Succesfully Logged In",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const OnboardHolder();
              }
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

class OnboardHolder extends StatelessWidget {
  const OnboardHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
      child: Column(
        children: [
          const Placeholder(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const Text(
              "Welcome to Tamil Nadu Ration Shop Online portal Kindly login to your account using your registered email address",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: SizedBox(
              height: 18.h,
              child: const Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
