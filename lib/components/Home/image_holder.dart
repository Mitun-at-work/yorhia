import 'package:flutter/material.dart';

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
