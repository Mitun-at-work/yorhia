import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboard_controller.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scafolld
    return GetBuilder<OnboardController>(builder: (controller) {
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.start),
          onPressed: () async {
            await controller.authenticateEmail();
          },
        ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  child: Image.asset("asset/images/bg.jpg"),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Click Me"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
