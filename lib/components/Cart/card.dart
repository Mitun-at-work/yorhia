import 'package:flutter/material.dart';
import 'package:yoriha/theme/colors.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key, required this.imageurl}) : super(key: key);
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.only(
        top: 20,
        right: 10,
        left: 10,
      ),
      decoration: const BoxDecoration(
        color: appBarColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            25,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageurl),
              ),
              color: highlightColor,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 0,
              left: 5,
              right: 100,
            ),
            margin: const EdgeInsets.only(left: 5),
            child: Column(
              children: [
                const Text(
                  "Apple",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: highlightColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "12Kg",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cancel_rounded,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.currency_rupee_sharp,
                    size: 18,
                    color: lightText,
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                      color: lightText,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
