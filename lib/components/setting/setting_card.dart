import 'package:flutter/material.dart';
import 'package:yoriha/theme/colors.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.theme,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String theme;

  @override
  Widget build(BuildContext context) {
    final Map color = {
      "Orange": [
        const Color.fromRGBO(236, 105, 53, 1),
        const Color.fromRGBO(254, 242, 230, 1)
      ],
      "Blue": [
        const Color.fromRGBO(28, 167, 233, 1),
        const Color.fromRGBO(229, 248, 255, 1)
      ],
      "Voilet": [
        const Color.fromRGBO(87, 52, 242, 1),
        const Color.fromRGBO(237, 235, 255, 1)
      ],
      "Rose": [
        const Color.fromRGBO(234, 41, 103, 1),
        const Color.fromRGBO(255, 229, 234, 1)
      ],
      "Yellow": [
        Colors.amber,
        Colors.white,
      ]
    };
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: color[theme][0],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Icon(
                      icon,
                      color: color[theme][1],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: lightText,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: appBarColor,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right_alt,
                    color: lightText,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          color: Colors.grey,
        ),
      ],
    );
  }
}
