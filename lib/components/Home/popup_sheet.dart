import 'package:flutter/material.dart';
import 'package:yoriha/components/Home/carousel_cta.dart';
import 'package:yoriha/components/Home/trending_carousel.dart';
import 'package:yoriha/theme/colors.dart';

Future<dynamic> buildPopupSheet(BuildContext context, int index) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      ),
    ),
    elevation: 0,
    // transitionAnimationCont
    //roller: AnmationCo,
    // shape: ,
    backgroundColor: bodyColor,
    context: context,
    builder: (context) => Wrap(
      children: [
        Column(
          children: [
            // App Bar
            Container(
              // color: Colors.yellow,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              height: 70,
              width: double.infinity,
              // color: appBarColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const ImagePlaceHolder(),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: const Text(
                          "Gingley Oil",
                          style: TextStyle(
                            color: lightText,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      BottomSHeetCta(icon: Icons.ios_share_rounded),
                      BottomSHeetCta(icon: Icons.favorite_border),
                      BottomSHeetCta(icon: Icons.close_outlined),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageLinks[index]),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
              height: 80,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    25,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: highlightColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    100,
                  ),
                ),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: highlightColor, // Background Color
                ),
                onPressed: () {},
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
