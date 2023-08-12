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
        leadingWidth: 18,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(16),
          child: Icon(
            Icons.fmd_good_outlined,
            color: Colors.black, size: 30,
          ),
        ),
        title:   Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Санкт-Петербург',
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
              Text(
                '12 Августа, 2023',
                style: Theme.of(context).appBarTheme.toolbarTextStyle,
              ),
            ],
          ),
        ),


        actions:const [Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: CircleAvatar(backgroundImage: AssetImage('assets/images/Avatar.png')),
        )],
      ),
      body: (_categoriesList == null)
          ? const SizedBox()
          : ListView.builder(
              itemCount: _categoriesList!.length,
              // separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final categories = _categoriesList![i];


                return CategoriesWidget(categories: categories);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _categoriesList = await CategoriesRepository().getCategories();
          setState(() {});
        },
        child: const Icon(Icons.abc_sharp),
      ),
    );
  }
}
