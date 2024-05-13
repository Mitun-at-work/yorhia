import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yorhia/features/auth/presentation/pages/mobile_number.dart';
import 'package:yorhia/features/auth/presentation/pages/otp_screen.dart';
import 'package:yorhia/features/auth/presentation/widgets/custom_elevated_button.dart';

import '../controllers/onboard_controller.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scafolld
    return GetBuilder<OnboardController>(builder: (controller) {
      return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: FloatingActionButton(
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //   onPressed: () async {
        //     Get.to(const PhoneNumber());
        //   },
        //   child: const Icon(Icons.start),
        // ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  child: Image.asset("asset/images/bg.jpg"),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  onPressed: () {
                    Get.to(const PhoneNumber());
                  },
                  fieldName: "Login",
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
