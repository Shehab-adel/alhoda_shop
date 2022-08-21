import 'package:alhoda/view/shared/app_bar.dart';
import 'package:alhoda/view/widgets/main_screen/drawer/drawer_widget.dart';
import 'package:alhoda/view/widgets/replies_screen/replies_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RepliesScreen extends StatelessWidget {
  RepliesScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white.withOpacity(0.9),
            appBar: buildAppBar(
                context: context,
                onPressedIcon: () {
                  Get.back();
                },
                title: 'Replies',
                sizeMediaQueryWidth: 0.2),
            drawer: Drawer(
              backgroundColor: Colors.green,
              child: DrawerWidget(),
            ),
            body: ListView.separated(
                itemBuilder: (buildContext, index) => RepliesCard(),
                separatorBuilder: (buildContext, index) => SizedBox(
                      height: size.height * .0001,
                    ),
                itemCount: 10)));
  }
}
