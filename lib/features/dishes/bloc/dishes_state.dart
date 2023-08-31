part of 'dishes_bloc.dart';

@immutable
abstract class DishesState {}

class DishesInitial extends DishesState {}
class DishesLoading extends DishesState {}
class DishesLoaded extends DishesState {
  final List<Dishes> dishesList;


  DishesLoaded({required this.dishesList});
}
class DishesLoadingFailure extends DishesState {
final Object? exception;

DishesLoadingFailure( {this.exception});
}
