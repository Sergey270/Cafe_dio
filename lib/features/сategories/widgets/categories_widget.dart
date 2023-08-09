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
    // final theme = Theme.of(context);
    return Center(
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
               // width: 150,

                height: 148,
               //  padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.fromLTRB(16.0,4.0,16.0,4.0,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(categories.image_url),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
              Container(
                padding: const EdgeInsets.only(left: 32,top: 12, right:60, ),
                child: Text(
                  categories.name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
            //   ),
            // ],
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
