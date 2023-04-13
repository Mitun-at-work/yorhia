import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoriha/theme/colors.dart';

BottomNavigationBar biuldNav() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: appBarColor,
    items: [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "asset/icons/home.svg",
          color: Colors.white,
          height: 25,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "asset/icons/shop.svg",
          color: Colors.white,
          height: 25,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "asset/icons/pay.svg",
          height: 25,
          color: Colors.white,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "asset/icons/profile.svg",
          height: 25,
          color: Colors.white,
        ),
        label: "",
      ),
    ],
  );
}
