import 'package:alhoda/view/shared/app_bar.dart';
import 'package:alhoda/view/widgets/cart/empty_cart.dart';
import 'package:alhoda/view/widgets/main_screen/drawer/drawer_widget.dart';
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
            appBar: buildAppBar(
                context: context,
                onPressedSearch: () {
                  Get.toNamed(AppRoutes.searchScreenRoute);
                },
                onPressedIcon: () {
                  Get.offNamed(AppRoutes.mainScreenRoute);
                },
                title: 'Cart'),
            drawer: Drawer(
              backgroundColor: Colors.green,
              child: DrawerWidget(),
            ),
            body: const EmptyCart()));
  }
}
