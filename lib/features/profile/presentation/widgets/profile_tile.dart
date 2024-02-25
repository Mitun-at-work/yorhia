import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile(
      {super.key,
      required this.profileTileTitle,
      required this.profileTileLeading});

  final String profileTileTitle;
  final IconData profileTileLeading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: ListTile(
        onTap: () {},
        leading: Icon(
          profileTileLeading,
          color: Colors.greenAccent,
        ),
        title: Text(
          profileTileTitle,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        trailing: IconButton.filledTonal(
            onPressed: () {},
            icon: const Icon(
              Icons.subdirectory_arrow_right,
              size: 15,
            )),
      ),
    );
  }
}
