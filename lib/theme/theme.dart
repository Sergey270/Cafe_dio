import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  // primarySwatch:  Colors.white,
  // dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,

    titleTextStyle: TextStyle(
      color: Colors.black,
      fontFamily: '.SF UI Display',
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
      toolbarTextStyle : TextStyle(
        color: Color.fromRGBO(0, 0, 0, 0.5),
        fontFamily: '.SF UI Display',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),

  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
        color: Colors.black,
        fontFamily: '.SF UI Display',
        fontSize: 28,
        fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
      color: Colors.black,
      fontFamily: '.SF UI Display',
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.5),
      fontFamily: '.SF UI Display',
      fontSize: 14,
      fontWeight: FontWeight.w400,
          ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: '.SF Pro Display',
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),

  ),
);
