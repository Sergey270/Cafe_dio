import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'models/categories.dart';

class CategoriesRepository {
  Future<List<Categories>>   getCategories() async {
   // List<Categories>  categoryList = [];
    final response = await Dio()
        .get("https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54");
   // debugPrint(response.toString());
    final List<dynamic> jsonData  = response.data['сategories']  ;
    // final categoriesData = jsonData['сategories'] as List<dynamic>;


    return jsonData
        .map((categoryData) => Categories.fromJson(categoryData))
        .toList();


  }
}

