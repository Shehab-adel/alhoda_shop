import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          title: Container(
            height: size.height * .06,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.searchScreenRoute);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 32,
              ),
            ),
          )),
      drawer: Drawer(backgroundColor: Colors.green),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [],
        ),
      ),
    ));
  }
}
