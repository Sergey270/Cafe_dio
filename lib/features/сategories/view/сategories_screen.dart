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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          bloc: _categoriesBloc,
          builder: (context, state) {
            if (state is CategoriesLoaded) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.categoriesList.length,
                // separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, i) {
                  final categories = state.categoriesList[i];
                  return CategoriesWidget(categories: categories);
                },
              );
            }
            if (state is CategoriesLoadingFailure) {
              return   Center(
                child: Column(
                  children: [
                    const Text(  'Нет Интернета'),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(onPressed: (){
                      _categoriesBloc.add(LoadCategories());
                    }, child: const Text('Повторить'))
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),

    );
  }
}
