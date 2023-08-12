part of 'categories_bloc.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}
class CategoriesLoading extends CategoriesState {}
class CategoriesLoaded extends CategoriesState {
  final List<Categories> categoriesList;

  CategoriesLoaded({required this.categoriesList});
}
class CategoriesLoadingFailure extends CategoriesState {
final Object? exception;

  CategoriesLoadingFailure( {this.exception});
}
