import 'package:alhoda/view/widgets/points_screen/point_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/app_bar.dart';
import '../widgets/main_screen/drawer/drawer_widget.dart';

class PointsScreen extends StatelessWidget {
  PointsScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(
          context: context,
          onPressedIcon: () {
            Get.back();
          },
          title: 'Points',
          sizeMediaQueryWidth: .2),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: DrawerWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [PointCard()],
        ),
      ),
    ));
  }
}
