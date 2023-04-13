import 'package:flutter/material.dart';
import 'package:yoriha/theme/colors.dart';

class ShopCarousel extends StatelessWidget {
  static const array = [
    "http://unblast.com/wp-content/uploads/2018/11/Shopping-Bag-Mockup-4.jpg",
    "https://cdn.dribbble.com/users/124372/screenshots/7211814/media/3933b816f38f94b049639088e0a6de27.jpg?compress=1&resize=400x300",
    "http://unblast.com/wp-content/uploads/2019/06/Shopping-Bag-Mockup.jpg",
  ];
  const ShopCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 5,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: array.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(7),
                height: 130,
                width: 160,
                decoration: BoxDecoration(
                  color: highlightColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(36),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(array[index]),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(9),
                child: const Text(
                  "Shopping Bags",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
