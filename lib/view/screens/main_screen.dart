import 'package:alhoda/view/widgets/main_screen/Best_selling_items.dart';
import 'package:alhoda/view/widgets/main_screen/Items_with_the_most_points.dart';
import 'package:alhoda/view/widgets/main_screen/mypartener.dart';
import 'package:flutter/material.dart';

import '../widgets/main_screen/category_group_widget.dart';
import '../widgets/main_screen/image_slider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlider(),
            CategoryGroupWidget(),
            Myparteners(),
            SizedBox(
              height: 10,
            ),
            BestSellingItems(),
            SizedBox(
              height: 10,
            ),
            ItemsWithTheMostPoints()
          ],
        ),
      ),
    ));
  }
}
