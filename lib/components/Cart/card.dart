import 'package:flutter/material.dart';
import 'package:yoriha/theme/colors.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      decoration: const BoxDecoration(
        color: appBarColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            35,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 15,
                ),
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/82/71/fe/8271feb1204633e8d46d5de57cff4a2c.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Orange",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      InkWell(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.cancel_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 170,
                    ),
                    child: Text(
                      "Organic",
                      style: TextStyle(
                        color: lightText,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          right: 90,
                        ),
                        child: Container(
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
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          // right: 5,
                        ),
                        child: SizedBox(
                          // alignment: Alignment.center,
                          height: 40,
                          width: 80,
                          // decoration: BoxDecoration(
                          //   color: appBarColor,
                          //   borderRadius: BorderRadius.circular(8),
                          // ),
                          child: Text(
                            "\$100.0",
                            style: TextStyle(
                              color: lightText,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
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
