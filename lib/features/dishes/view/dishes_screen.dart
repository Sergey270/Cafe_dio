import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/dishes_bloc.dart';
import '../widgets/dishes_widget.dart';

class DishesScreen extends StatefulWidget {
  const DishesScreen({
    super.key,
  });

  @override
  State<DishesScreen> createState() => _DishesScreenState();
}

class _DishesScreenState extends State<DishesScreen> {



  String? categoriesName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)!.settings.arguments;
    //  assert(args != null && args is String, 'You must provide String args' );
    categoriesName = args as String?;
    setState(() {});
    super.didChangeDependencies();
  }

  final _dishesBloc = DishesBloc();
  @override
  void initState() {
    _dishesBloc.add(LoadDishes());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoriesName!),
        elevation: 0,
      ),
      body: BlocBuilder<DishesBloc, DishesState>(
        bloc: _dishesBloc,
        builder: (context, state) {
          if (state is DishesLoaded) {
            return Column(
              children: [

                const SizedBox(height: 16),
                Expanded(

                  child: GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 18,
                      crossAxisSpacing: 18,
                      childAspectRatio: 0.74,
                    ),
                    itemCount: state.dishesList.length,
                    itemBuilder: (context, i) {
                      final dishes = state.dishesList[i];
                      return DishesWidget(dishes: dishes);
                    },
                  ),
                ),
              ],
            );
          }
          if (state is DishesLoadingFailure) {
            return Center(
              child: Column(
                children: [
                  // Text(Exception as String),
                  const Text('Нет Интернета'),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        _dishesBloc.add(LoadDishes());
                      },
                      child: const Text('Повторить'))
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

// Container(
// child:
// ListView.builder(
// scrollDirection: Axis.horizontal,
// padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// itemCount: 4,
// // separatorBuilder: (_, __) =>   Container(width: 8, color: Colors.amberAccent,),
// itemBuilder: (context, i ) {
// final dishes = state.dishesList[i];
// Container(
// color: Colors.blueGrey,
// //child: Text(dishes.tegs[i]),
// );
// }
//
// ),
// ),
