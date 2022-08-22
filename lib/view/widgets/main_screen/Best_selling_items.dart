import 'package:alhoda/view/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/cart_controller.dart';

class BestSellingItems extends StatefulWidget {
  BestSellingItems({Key? key}) : super(key: key);

  @override
  State<BestSellingItems> createState() => _BestSellingItemsState();
}

class _BestSellingItemsState extends State<BestSellingItems> {
  late Size size;

  final cartController = Get.find<CartController>();

  String selectedText = 'كرتونة = 10 كيس';

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 11.0, right: 8.0),
      child: SizedBox(
        height: size.height * .36,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (buildContext, index) {
              return Card(
                  elevation: 15,
                  child:
                      SizedBox(width: size.width * .5, child: buildCardItem()));
            },
            separatorBuilder: (buildContext, index) {
              return const SizedBox(
                width: 10,
              );
            },
            itemCount: 10),
      ),
    );
  }

  Widget plusAndAddCartContainer() {
    return Row(
      children: [
        buttonPlusAndMinusContainer(
            color: Colors.grey,
            width: size.width * 0.08,
            height: size.height * 0.04,
            icon: Icons.add,
            onTap: () {}),
        SizedBox(
          width: size.width * 0.05,
        ),
        Container(
          height: size.height * 0.035,
          width: size.width * 0.11,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            '${1}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        buttonPlusAndMinusContainer(
            color: Colors.grey,
            width: size.width * 0.08,
            height: size.height * 0.04,
            icon: Icons.remove,
            onTap: () {
              cartController.changeIsPressToCart();
            }),
      ],
    );
  }

  Widget dropDownBottomContainer() {
    return PopupMenuButton(
        icon: const Icon(Icons.expand_more),
        itemBuilder: (context) {
          return const [
            PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'كرتونة = 10 علبة',
                )),
            PopupMenuItem<int>(value: 1, child: Text('علبة')),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            selectedText = 'كرتونة = 10 علبة';
          } else if (value == 1) {
            selectedText = 'علبة';
          }
          setState(() {});
        });
  }

  Widget buildCardItem() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  //controller.manageFavorites(productId);
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                )),
            const Text(
              '181.5',
              style: TextStyle(fontSize: 16),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "0.0",
                    style: TextStyle(
                        fontSize: 9,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "points",
                    style: TextStyle(
                        fontSize: 9,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Container(
          width: size.width * 0.15,
          height: size.height * 0.1,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/Splash.png'),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          'Product name',
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(selectedText),
                SizedBox(
                  width: size.width * 0.1,
                ),
                dropDownBottomContainer()
              ],
            ),
          ],
        ),
        Obx(
          () => cartController.isAddedPress.value
              ? plusAndAddCartContainer()
              : addToCart(
              right: 8,
                  top: 5,
                  bottom: 10,
                  left: 8,
                  radius: 5,
                  onTap: () {
                    cartController.changeIsPressToCart();
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        cartController.isAddedPress.value = false;
                      },
                    );
                  }),
        )
      ],
    );
  }
}
