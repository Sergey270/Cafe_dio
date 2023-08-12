import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../repositories/categories/categories_repository.dart';
import '../../../repositories/categories/models/categories.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<LoadCategories>((event, emit) async{
     final categoriesList = await CategoriesRepository().getCategories();
       emit(CategoriesLoaded(categoriesList: categoriesList));
    });
  }
}
