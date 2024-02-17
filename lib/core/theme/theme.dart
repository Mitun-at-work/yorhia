import 'package:flutter/material.dart';

ThemeData get getTheme => ThemeData(
      fontFamily: 'Poppins',
      colorSchemeSeed: Colors.orange,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
          fontFamily: 'Poppins',
        ),
      ),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 20,
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
        subtitleTextStyle: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 15,
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
        leadingAndTrailingTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0,
        shape: CircleBorder(),
      ),

      ///
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
