import 'package:flutter/material.dart';
import 'package:yoriha/components/Home/image_holder.dart';
import 'package:yoriha/components/shop/state_button.dart';
import 'package:yoriha/theme/colors.dart';

class HorizontalCarousel extends StatelessWidget {
  const HorizontalCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      height: 370,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            width: 240,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              // color: Colors.red,
              child: Column(
                children: [
                  Container(
                    height: 220,
                    decoration: const BoxDecoration(
                      color: highlightColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.shopify.com/s/files/1/0268/1477/5381/products/Untitled-1_e2feb435-e009-4df5-bc76-9c39c10844bc_580x.jpg?v=1610523845"),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const ImagePlaceHolder(),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                                left: 15,
                                right: 10,
                                bottom: 10,
                              ),
                              child: const Text(
                                "Gingley Oil",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 15,
                                  color: lightText,
                                ),
                                Text(
                                  "500",
                                  style:
                                      TextStyle(color: lightText, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Button()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
