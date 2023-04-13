import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yoriha/theme/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
        alignment: Alignment.center,
        height: 130,
        padding: const EdgeInsets.only(
          top: 45,
          left: 30,
          right: 15,
        ),
        decoration: const BoxDecoration(
          color: appBarColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 5,
                right: 25,
              ),
              child: SvgPicture.asset(
                height: 18,
                // width: 150,
                "asset/icons/search.svg",
                color: Colors.white,
              ),
            ),
            const Expanded(
              child: TextField(
                style: TextStyle(
                  color: lightText,
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: lightText,
                    // fontFamily: 'Poppins',
                  ),
                  // prefixIconColor: Colors.white,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // fillColor: Colors.black
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 5,
                right: 25,
              ),
              child: SvgPicture.asset(
                height: 20,
                // width: 150,
                "asset/icons/more.svg",
                color: lightText,
              ),
            ),
          ],
        ));
  }
}
