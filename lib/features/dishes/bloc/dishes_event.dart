part of 'dishes_bloc.dart';

@immutable
abstract class DishesEvent {}

class LoadDishes extends DishesEvent {}

class FilterDishes extends DishesEvent {
  final List<String> selectedTags;

  FilterDishes({required this.selectedTags});

}



//class FilterDishes extends DishesEvent {}

