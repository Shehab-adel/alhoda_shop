import 'package:alhoda/view/widgets/category_screen/category_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 0.8,
              crossAxisSpacing: 9.0,
              mainAxisSpacing: 6.0,
              maxCrossAxisExtent: 200),
          itemBuilder: (context, index) {
            return CategoryCard();
          }),
    );
  }
}
