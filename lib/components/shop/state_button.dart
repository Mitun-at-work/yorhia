import 'package:flutter/material.dart';
import 'package:yoriha/theme/colors.dart';

class Button extends StatefulWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  var text = "Add to Cart";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(
          () {
            text = "Added  ✅";
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: highlightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
