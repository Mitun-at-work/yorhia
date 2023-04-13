import 'package:flutter/material.dart';
import 'package:yoriha/components/Home/carousel_cta.dart';

import '../../theme/colors.dart';

class TrendingCarousel extends StatelessWidget {
  const TrendingCarousel({
    Key? key,
  }) : super(key: key);

  static List<String> imageLinks = [
    "https://www.lays.com/sites/lays.com/files/2019-09/Wavy%20Original_0.png",
    "https://www.lays.com/sites/lays.com/files/styles/product_thumbnail/public/2019-09/Wavy%20Ranch.png?itok=puz3AP74",
    "https://www.lays.com/sites/lays.com/files/2019-09/CheddarSC_0.png",
    "https://www.lays.com/sites/lays.com/files/styles/product_thumbnail/public/2020-11/Cheddar-Jalapeno_0.jpg?itok=HogfnWnA",
    "https://www.lays.com/sites/lays.com/fles/2021-07/XL%20LKC%20Jalapeno%20copy_0.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: imageLinks.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: (() {
                  buildPopupSheet(context, index);
                }),
                child: Container(
                  height: 190,
                  width: 310,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 13,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageLinks[index]),
                    ),
                    color: highlightColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        26,
                      ),
                    ),
                  ),
                ),
              ),
              const CarouselCTA(),
            ],
          );
        },
      ),
    );
  }
}

final List<String> imageLinks = [
  "https://www.lays.com/sites/lays.com/files/2019-09/Wavy%20Original_0.png",
  "https://www.lays.com/sites/lays.com/files/styles/product_thumbnail/public/2019-09/Wavy%20Ranch.png?itok=puz3AP74",
  "https://www.lays.com/sites/lays.com/files/2019-09/CheddarSC_0.png",
  "https://www.lays.com/sites/lays.com/files/styles/product_thumbnail/public/2020-11/Cheddar-Jalapeno_0.jpg?itok=HogfnWnA",
  "https://www.lays.com/sites/lays.com/files/2021-07/XL%20LKC%20Jalapeno%20copy_0.png",
];

Future<dynamic> buildPopupSheet(BuildContext context, int index) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
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
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: highlightColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageLinks[index]),
                ),
              ),
            ),
            const _PriceHolder(),
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

class _PriceHolder extends StatelessWidget {
  const _PriceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: const Center(
        child: Text(
          "~ ₹ 500 only",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

class BottomSHeetCta extends StatelessWidget {
  final IconData icon;
  const BottomSHeetCta({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Icon(
        icon,
        color: lightText,
      ),
    );
  }
}
