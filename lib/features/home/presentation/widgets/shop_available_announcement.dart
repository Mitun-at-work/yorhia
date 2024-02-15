import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopAnnouncement extends StatelessWidget {
  const ShopAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 18,
          top: 30,
          child: CircleAvatar(
            radius: 4.r,
            backgroundColor: Colors.red,
          ),
        ),
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 10.w,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 15.w,
          ),
          decoration: BoxDecoration(
              color: Colors.orange.withOpacity(.1),
              borderRadius: BorderRadius.all(
                Radius.circular(5.r),
              )),
          child: const Row(
            children: [
              Text(
                "Tamil Nadu Ration Shop Announcement \nToday Ration Shop will be open for your ration number\nKindly Place Orders to grab the rations",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
