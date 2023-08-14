import 'package:flutter/material.dart';

import '../../../repositories/categories/models/categories.dart';

class DishesScreen extends StatelessWidget {
  final Categories categories;

  const DishesScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categories.name)),
    );
  }
}
