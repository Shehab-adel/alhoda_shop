import 'package:alhoda/view/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/favorite_screen/favorite_card_items.dart';

class SimilarCardItems extends StatelessWidget {
  SimilarCardItems({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(
          context: context,
          onPressedIcon: () {
            Get.back();
          },
          title: 'Similar Items',
          sizeMediaQueryWidth: .5),
      body: ListView.builder(
          itemBuilder: (buildContext, index) {
            return SizedBox(
                height: size.height * 0.2, child: FavoriteCardItem());
          },
          itemCount: 10),
    );
  }
}
