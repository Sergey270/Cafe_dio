
import 'package:cafe_dio/repositories/categories/categories_repository.dart';
import 'package:flutter/material.dart';

import '../../../repositories/categories/models/categories.dart';
import '../widgets/categories_widget.dart';

class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({
    super.key,
  });

  @override
  State<CategoriesListScreen> createState() => _CategoriesListScreenState();

}

class _CategoriesListScreenState extends State<CategoriesListScreen> {

 List<Categories>? _categoriesList;
  // @override
  // void initState() {
  //   CategoriesRepository().getCategories();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrenciesList'),
      ),
      body: (_categoriesList == null)? const SizedBox()
      :
      ListView.builder(
        itemCount: _categoriesList!.length,
       // separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
            final categories = _categoriesList![i];


          return   CategoriesWidget(categories: categories);
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()  async{
        _categoriesList= await CategoriesRepository().getCategories();
        setState(() {
        });
      },
      child: const Icon(Icons.abc_sharp),
      ),

    );
  }
}
