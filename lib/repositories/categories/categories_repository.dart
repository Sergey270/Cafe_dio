import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'models/сategories.dart';

class CategoriesRepository {
  Future<List<Categories>> getCategories() async {
    final response = await Dio()
        .get("https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54");
   // debugPrint(response.toString());
    final data2 = response.data as Map<String, dynamic> ;

    final json = data2.entries.map(( e) =>

      Categories(id:  data2['id'] ,
          name: data2['name'],
          image_url: data2['image_url'],


      ),
    ).toList();
// List<Categories>.from(response.data["сategories"]) ;
    return json ;
  }
}

