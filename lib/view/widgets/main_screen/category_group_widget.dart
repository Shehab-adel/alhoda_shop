import 'package:alhoda/view/widgets/category_screen/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/main_controller.dart';

class CategoryGroupWidget extends StatelessWidget {
  CategoryGroupWidget({Key? key}) : super(key: key);

  late Size size;
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Category Groups',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              InkWell(
                onTap: () {
                  mainController.currentIndex.value = 1;
                },
                child: Container(
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(.3),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.category,
                    size: 30,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: buildCardItem(),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget buildCardItem() {
    return SizedBox(
      height: size.height * .29,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (buildContext, index) {
            return CategoryCard();
          },
          separatorBuilder: (buildContext, index) => const SizedBox(
                width: 10,
              ),
          itemCount: 10),
    );
  }
}
