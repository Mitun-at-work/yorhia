import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yoriha/components/shop/shop.dart';
import 'package:yoriha/main.dart';
import 'package:yoriha/theme/colors.dart';

class FlashPage extends StatefulWidget {
  const FlashPage({Key? key}) : super(key: key);

  @override
  State<FlashPage> createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 300,
              horizontal: 100,
            ),
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Image(
                  image: NetworkImage(
                      "https://listonic.com/wp-content/uploads/2018/12/grocery-bag-1-3.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
