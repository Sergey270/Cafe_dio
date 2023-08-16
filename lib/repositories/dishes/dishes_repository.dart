import 'dart:convert';

import 'package:cafe_dio/repositories/dishes/models/dishes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'models/dishes.dart';

class DishesRepository {
  Future<List<Dishes>>   getDishes() async {
   // List<Categories>  categoryList = [];
    final response = await Dio()
        .get("https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54");
   // debugPrint(response.toString());
    final List<dynamic> jsonData  = response.data['dishes']  ;
    // final dishesData = jsonData['dishes'] as List<dynamic>;


    return jsonData
        .map((dishesData) => Dishes.fromJson(dishesData))
        .toList();


  }
}

