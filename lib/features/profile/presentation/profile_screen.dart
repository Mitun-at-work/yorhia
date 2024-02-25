import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoriha/features/profile/presentation/widgets/profile_tile.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent.withOpacity(.5),
                radius: 50,
                child: Text(
                  'S',
                  style: TextStyle(fontSize: 50.sp, color: Colors.white),
                ),
              ),
            ),
            const Text(
              'Sudharsan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              '@SudharsanCoder',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
            const ProfileTile(
                profileTileTitle: "Settings", profileTileLeading: Icons.home)
          ],
        ),
      ),
    );
  }
}
