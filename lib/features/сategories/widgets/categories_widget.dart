import 'package:cafe_dio/repositories/categories/models/categories.dart';
import 'package:flutter/material.dart';


class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final Categories categories;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        // color: Color(int.parse(product.color)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          GestureDetector(
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) =>
              //     ItemPage(productId: product.id)),
              // );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(categories.image_url),
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  categories.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
 //*
// Container(
// height: 111,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
// image: DecorationImage(image: NetworkImage(categories.image_url),
// fit: BoxFit.cover,
// )
// ),
// )
