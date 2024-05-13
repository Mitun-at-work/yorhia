import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yorhia/features/auth/presentation/controller/auth_controller.dart';
import 'package:yorhia/features/auth/presentation/pages/otp_screen.dart';
import 'package:yorhia/features/auth/presentation/widgets/custom_elevated_button.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final AuthController authController = Get.find();
    TextEditingController phoneNumberController = TextEditingController();
    

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),
      ),

      //
      body: SafeArea(
        child: Column(
          //
          children: [
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
              child: const Text(
                'Enter your mobile number',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),

            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
              child: TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  hintText: "Phone number",
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),

            //
            const Spacer(),

            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  fieldName: "Get OTP",
                  onPressed: () async {
                    if (phoneNumberController.text.isEmpty) {
                      Get.snackbar(
                        margin: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 8.w),
                        "Error",
                        "Please enter phone number to Login",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    } else {
                      String phoneNumber = '+91${phoneNumberController.text}';
                      authController.updatePhoneNumber(phoneNumber);
                      await authController.sendOTP(); // Updated to sendOTP

                      if (context.mounted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OTPPage(
                              phonenNumber: '+91${phoneNumberController.text}',
                            ),
                          ),
                        );
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
