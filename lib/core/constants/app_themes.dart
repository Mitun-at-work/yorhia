import 'package:flutter/material.dart';

class AppTheme {
  AppTheme();

  static Color defaultBoxShadowColor = Colors.grey.withOpacity(.1);

  static Color productSelectedBoxShadowColor = Colors.green.withOpacity(.3);

  static Color appHighLightColor = Colors.lightGreenAccent;
}

// BoxShadow Class
class BoxSahdow {
  BoxSahdow();

  // Not Selected Theme
  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      offset: const Offset(0, -2),
      blurRadius: .1,
      color: AppTheme.defaultBoxShadowColor,
    ),
    BoxShadow(
      offset: const Offset(0, 2),
      blurRadius: .1,
      color: AppTheme.defaultBoxShadowColor,
    ),
    BoxShadow(
      offset: const Offset(2, 0),
      blurRadius: .1,
      color: AppTheme.defaultBoxShadowColor,
    ),
    BoxShadow(
      offset: const Offset(-2, 0),
      blurRadius: .1,
      color: AppTheme.defaultBoxShadowColor,
    ),
  ];

  // Seleced

  static List<BoxShadow> productSelectedBoxShadow = [
    BoxShadow(
      offset: const Offset(0, -2),
      blurRadius: .1,
      color: AppTheme.productSelectedBoxShadowColor,
    ),
    BoxShadow(
      offset: const Offset(0, 2),
      blurRadius: .1,
      color: AppTheme.productSelectedBoxShadowColor,
    ),
    BoxShadow(
      offset: const Offset(2, 0),
      blurRadius: .1,
      color: AppTheme.productSelectedBoxShadowColor,
    ),
    BoxShadow(
      offset: const Offset(-2, 0),
      blurRadius: .1,
      color: AppTheme.productSelectedBoxShadowColor,
    ),
  ];
}
