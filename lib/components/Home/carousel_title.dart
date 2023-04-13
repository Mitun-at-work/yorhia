import 'package:flutter/material.dart';
import 'package:yoriha/components/Profile/profile_page.dart';
import 'package:yoriha/theme/colors.dart';

class CarouselTitle extends StatelessWidget {
  const CarouselTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
        right: 10,
        top: 18,
        bottom: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Heading(),
          CTA(),
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Top Deals",
      style: TextStyle(
        fontSize: 23,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CTA extends StatelessWidget {
  const CTA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfilePage(),
          ),
        );
      },
      child: const Text(
        "See All",
        style: TextStyle(
          // fontSize: 23,
          fontFamily: 'Poppins',
          color: highlightColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
