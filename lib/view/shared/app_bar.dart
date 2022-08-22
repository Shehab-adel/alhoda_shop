import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/app_routes.dart';

AppBar buildAppBar({
  required BuildContext context,
  required Function() onPressedIcon,
  required String title,
  required double sizeMediaQueryWidth}) {
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height * .075,
    backgroundColor: Colors.transparent,
    iconTheme: const IconThemeData(
      color: Colors.green,
      size: 30,
    ),
    leadingWidth: MediaQuery.of(context).size.width * .12,
    title: Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .037,
          width: MediaQuery.of(context).size.width * .08,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.7),
              borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.searchScreenRoute);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * sizeMediaQueryWidth),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
    actions: [
      Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: IconButton(
            onPressed: onPressedIcon,
            icon: const Icon(Icons.arrow_forward),
            color: Colors.black,
          )),
    ],
    centerTitle: true,
  );
}

Widget buttonPlusAndMinusContainer(
    {required double height,
    required double width,
    required IconData icon,
    required Color color,
    required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(left: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    ),
  );
}

Widget addToCart(
    {required Function() onTap,
    required double left,
    required double right,
    required double top,
    required double bottom,
    required double radius}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin:
          EdgeInsets.only(right: right, left: left, bottom: bottom, top: top),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(radius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Add To Cart',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 20,
              )),
        ],
      ),
    ),
  );
}
