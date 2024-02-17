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
    return Column(
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            : const Text(
                "Unfortunately Nothing to show here",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
      ],
    );
  }
}
