import 'package:flutter/material.dart';

ThemeData get getTheme => ThemeData(
      fontFamily: 'Poppins',
      colorSchemeSeed: Colors.orange,
      appBarTheme: const AppBarTheme(),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 5),
        leadingAndTrailingTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
      ),
    );
