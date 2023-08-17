import 'dart:convert';

import 'package:cafe_dio/repositories/dishes/models/dishes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'models/dishes.dart';

class DishesRepository {
  Future<List<Dishes>>   getDishes() async {

    final response = await Dio()
        .get("https://run.mocky.io/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b");

    final List  jsonData  = response.data['dishes']  ;
    // final dishesData = jsonData['dishes'] as List<dynamic>;

     return jsonData
        .map((dishesData) => Dishes.fromJson(dishesData))
        .toList();


  }
}

