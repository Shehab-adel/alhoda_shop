import 'package:flutter/material.dart';

AppBar buildAppBar(
    {required BuildContext context,
    required Function() onPressedSearch,
    required Function() onPressedIcon,
    required String title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    iconTheme: const IconThemeData(
      color: Colors.green,
      size: 30,
    ),
    title: Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .035,
          width: MediaQuery.of(context).size.width * .1,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.7),
              borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            onPressed: onPressedSearch,
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .18,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.black),
        )
      ],
    ),
    actions: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: onPressedIcon,
            icon: const Icon(Icons.arrow_forward),
            color: Colors.black,
          )),
    ],
  );
}
