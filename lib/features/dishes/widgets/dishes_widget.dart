import 'package:cafe_dio/repositories/categories/models/categories.dart';
import 'package:flutter/material.dart';

import '../../../repositories/dishes/models/dishes.dart';
import '../../dishes/view/dishes_screen.dart';

class DishesWidget extends StatelessWidget {
  const DishesWidget({
    Key? key,
    required this.dishes,
  }) : super(key: key);

  final Dishes dishes;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/dishes', arguments: dishes.name);
        },
        child: Column(

          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: (MediaQuery.of(context).size.width - 43) / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(dishes.image_url),
                 // fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              dishes.name,maxLines: 2,
               style: Theme.of(context).textTheme.bodyMedium,
            ),

          ],
        ),
      ),
    );
  }
}
