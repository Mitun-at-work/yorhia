import 'package:flutter/material.dart';
import 'package:yoriha/components/Cart/cart_page.dart';
import 'package:yoriha/theme/colors.dart';

class TextCTA extends StatelessWidget {
  const TextCTA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: const Text(
            "Find your Favourite\nProducts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ));
            },
            color: highlightColor,
          ),
        ),
      ],
    );
  }
}
