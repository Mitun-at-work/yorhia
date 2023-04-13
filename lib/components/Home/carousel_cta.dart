import 'package:flutter/material.dart';
import 'package:yoriha/components/shop/shop.dart';
import 'package:yoriha/theme/colors.dart';

class CarouselCTA extends StatelessWidget {
  const CarouselCTA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 4,
      ),
      width: 305,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ImagePlaceHolder(),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Gingley Oil",
                  style: TextStyle(
                    color: Color.fromARGB(255, 144, 154, 163),
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const _ShopNowButton()
        ],
      ),
    );
  }
}

class _ShopNowButton extends StatelessWidget {
  const _ShopNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ShopPage(),
            ));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: highlightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),
      child: const Text(
        'Shop Now',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: const BoxDecoration(
        color: highlightColor,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "http://www.lays.com/sites/lays.com/themes/lays/img/logo-big.jpg",
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      // child:
    );
  }
}
