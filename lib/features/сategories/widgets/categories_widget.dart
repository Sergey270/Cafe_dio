import 'package:cafe_dio/repositories/categories/models/categories.dart';
import 'package:flutter/material.dart';

import '../../dishes/view/dishes_screen.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final Categories categories;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),

      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed('/dishes', arguments: categories.name);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            Image.network(categories.image_url,  fit: BoxFit.cover,),
            Container(
              padding: const EdgeInsets.only(
                left: 32,
                top: 12,
                right: 60,
              ),
              child: Text(
                categories.name,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );


  }
}
