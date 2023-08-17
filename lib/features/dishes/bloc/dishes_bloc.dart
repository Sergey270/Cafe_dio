import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../repositories/categories/categories_repository.dart';
import '../../../repositories/categories/models/categories.dart';
import '../../../repositories/dishes/dishes_repository.dart';
import '../../../repositories/dishes/models/dishes.dart';

part 'dishes_event.dart';
part 'dishes_state.dart';

class DishesBloc extends Bloc<DishesEvent, DishesState> {
  DishesBloc() : super(DishesInitial()) {
    on<LoadDishes>((event, emit) async{
     try {
      // emit(CategoriesLoading());
       final dishesList = await DishesRepository().getDishes();

         emit(DishesLoaded(dishesList: dishesList));
     }   catch (e) {
       emit(DishesLoadingFailure(exception: e));
     }
    });
  }
}
