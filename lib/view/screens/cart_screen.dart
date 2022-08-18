import 'package:alhoda/view/widgets/cart/empty_cart.dart';
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
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(
                color: Colors.green,
                size: 30,
              ),
              title: Row(
                children: [
                  Container(
                    height: size.height * .035,
                    width: size.width * .1,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(8),
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
                    width: size.width * .18,
                  ),
                  const Text(
                    'Cart',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              actions: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward),
                      color: Colors.black,
                    )),
              ],
            ),
            drawer: const Drawer(),
            body: const EmptyCart()));
  }
}
