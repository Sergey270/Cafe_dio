import 'package:cafe_dio/features/%D1%81ategories/bloc/categories_bloc.dart';
import 'package:cafe_dio/repositories/categories/categories_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/categories/models/categories.dart';
import '../widgets/categories_widget.dart';
import 'appbar.dart';

class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({
    super.key,
  });

  @override
  State<CategoriesListScreen> createState() => _CategoriesListScreenState();
}

class _CategoriesListScreenState extends State<CategoriesListScreen> {
//  List<Categories>? _categoriesList;

  final _categoriesBloc = CategoriesBloc();
  @override
  void initState() {
    _categoriesBloc.add(LoadCategories());
    // CategoriesRepository().getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: BlocBuilder<CategoriesBloc, CategoriesState>(
        bloc: _categoriesBloc,
        builder: (context, state) {
          if (state is CategoriesLoaded) {
            return ListView.builder(
              itemCount: state.categoriesList.length,
              // separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final categories = state.categoriesList[i];
                return CategoriesWidget(categories: categories);
              },
            );
          }
          if (state is CategoriesLoadingFailure) {
            return const Center(
              child: Text(  'Нет Интернета'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

      // (_categoriesList == null)
      //     ? const SizedBox()
      //     : ListView.builder(
      //         itemCount: _categoriesList!.length,
      //         // separatorBuilder: (context, index) => const Divider(),
      //         itemBuilder: (context, i) {
      //           final categories = _categoriesList![i];
      //           return CategoriesWidget(categories: categories);
      //         },
      //       ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     _categoriesList = await CategoriesRepository().getCategories();
      //     setState(() {});
      //   },
      //   child: const Icon(Icons.abc_sharp),
      // ),
    );
  }
}
