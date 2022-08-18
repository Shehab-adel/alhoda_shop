import 'package:flutter/material.dart';

import '../widgets/main_screen/Best_selling_items.dart';
import '../widgets/main_screen/Items_with_the_most_points.dart';
import '../widgets/main_screen/category_group_widget.dart';
import '../widgets/main_screen/image_slider.dart';
import '../widgets/main_screen/mypartener.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageSlider(),
            const CategoryGroupWidget(),
            const Myparteners(),
            const SizedBox(
              height: 12,
            ),
            BestSellingItems(),
            const SizedBox(
              height: 12,
            ),
            ItemsWithTheMostPoints()
          ],
        ),
      ),
    ));
  }
}
