import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoriha/theme/colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: appBarColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )),
      child: Column(
        children: const [
          AppBar(),
          LocationAddress(),
        ],
      ),
    );
  }
}

class LocationAddress extends StatelessWidget {
  const LocationAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 1,
      ),
      child: const ShopDetails(),
    );
  }
}

class ShopDetails extends StatelessWidget {
  const ShopDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: SvgPicture.asset(
              "asset/icons/location.svg",
              height: 22,
              color: highlightColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: const Text(
              "9, chatiram Street, Udumalpet",
              style: TextStyle(color: lightText),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: lightText,
            )),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          alignment: Alignment.topLeft,
          child: const Text(
            "Shop Number (492)",
            style: TextStyle(
              fontSize: 20,
              color: lightText,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
