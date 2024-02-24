import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLoadingState extends StatelessWidget {
  const HomeLoadingState({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoading
              ? Center(
                  child: Column(
                    children: [
                      const CircularProgressIndicator(),
                      SizedBox(
                        height: 15.h,
                      ),
                      const Text(
                        "Fetching Data",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                    child: const Text(
                      "No Announcements Posted",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
