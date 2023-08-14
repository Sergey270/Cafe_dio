import 'package:cafe_dio/repositories/categories/models/categories.dart';
import 'package:flutter/material.dart';

import '../../dishes/view/dishes.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final Categories categories;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return Center(
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => DishesScreen(
                              categories: categories,
                            )),
                  );
                },
                child: Container(
                  height: 148,
                  margin: const EdgeInsets.fromLTRB(
                    16.0,
                    4.0,
                    16.0,
                    4.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(categories.image_url),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ],
          ),
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
    );

    //       GestureDetector(
    //         onTap: () {
    //           // Navigator.of(context)
    //           //     .push(MaterialPageRoute(builder: (context) =>
    //           //     ItemPage(productId: product.id)),
    //           // );
    //         },
    //         child:
  }
}
