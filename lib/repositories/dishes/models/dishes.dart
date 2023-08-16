import 'package:json_annotation/json_annotation.dart';

part 'dishes.g.dart';

@JsonSerializable()
class Dishes {
  final int id;
  final String name;
  final String price;
  final String weight;
  final String description;
  final String image_url;
  final List tegs;

  Dishes({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.description,
    required this.image_url,
    required this.tegs,
  });

  factory Dishes.fromJson(Map<String, dynamic> json) => _$DishesFromJson(json);
  Map<String, dynamic> toJson() => _$DishesToJson(this);
}
