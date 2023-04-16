import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 35),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.amber,
                    height: 600,
                    width: double.infinity,
                    child: Column(
                      children: const [
                        option(
                          title: "Profile",
                          svg: "assets/svg/profile.svg",
                        ),
                        option(
                          title: "Notifications",
                          svg: "assets/svg/bell.svg",
                        ),
                        option(
                          title: "Appearance",
                          svg: "assets/svg/eye.svg",
                        ),
                        option(
                          title: "Security",
                          svg: "assets/svg/lock.svg",
                        ),
                        option(
                          title: "Help",
                          svg: "assets/svg/headphone.svg",
                        ),
                        option(
                          title: "About",
                          svg: "assets/svg/about.svg",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class option extends StatelessWidget {
  const option({super.key, required this.svg, required this.title});

  final String title;
  final String svg;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(height: 20, width: 20, child: SvgPicture.asset(svg)),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            const Spacer(),
            IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
