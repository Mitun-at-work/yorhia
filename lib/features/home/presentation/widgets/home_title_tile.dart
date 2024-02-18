import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitleTile extends StatelessWidget {
  const HomeTitleTile(
      {super.key, required this.tileHeading, required this.function});

  final String tileHeading;

  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListTile(
        leading: Text(tileHeading),
        trailing: TextButton(
          onPressed: function,
          child: const Text("See More"),
        ),
      ),
    );
  }
}
