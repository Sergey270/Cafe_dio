import 'package:flutter/material.dart';

import '../../../repositories/categories/models/categories.dart';

class DishesScreen extends StatefulWidget {
 // final Categories categories;

  const DishesScreen({super.key, });

  @override
  State<DishesScreen> createState() => _DishesScreenState();
}

class _DishesScreenState extends State<DishesScreen> {

  String? categoriesName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)!.settings.arguments;
   //  assert(args != null && args is String, 'You must provide String args' );

    categoriesName = args as String?  ;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( categoriesName!  )),
      //body: ,
    );
  }
}
