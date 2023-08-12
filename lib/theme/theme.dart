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
  textTheme: TextTheme(
    labelLarge: const TextStyle(
        color: Colors.black,
        fontFamily: '.SF UI Display',
        fontSize: 28,
        fontWeight: FontWeight.bold),
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);
