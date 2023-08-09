import 'package:cafe_dio/router/router.dart';
import 'package:cafe_dio/theme/theme.dart';
import 'package:flutter/material.dart';




class CafeListApp extends StatelessWidget {
  const CafeListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'CryptoCurrenciesList',
      theme: lightTheme,
      routes: routes,
    );
  }
}
