
import 'package:cafe_dio/repositories/categories/categories_repository.dart';
import 'package:flutter/material.dart';

import '../widgets/crypto_coin_tile.dart';

class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({
    super.key,
  });

  @override
  State<CategoriesListScreen> createState() => _CategoriesListScreenState();

}

class _CategoriesListScreenState extends State<CategoriesListScreen> {

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
      body: ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          const coinName = 'сategories';
          return const CategoriesTile(coinName: coinName);
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        CategoriesRepository().getCategories();
      },
      child: const Icon(Icons.abc_sharp),
      ),

    );
  }
}
