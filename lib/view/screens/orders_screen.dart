import 'package:alhoda/view/shared/app_bar.dart';
import 'package:alhoda/view/widgets/main_screen/drawer/drawer_widget.dart';
import 'package:alhoda/view/widgets/order_screen/current_and_expired_orders.dart';
import 'package:alhoda/view/widgets/order_screen/empty_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(
            context: context,
            onPressedIcon: () {
              Get.back();
            },
            title: 'Orders',
            sizeMediaQueryWidth: 0.2),
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: DrawerWidget(),
        ),
        body: Column(
          children: [
            CurrentAndExpiredOrders(),
            EmptyOrder(),
          ],
        ),
      ),
    );
  }
}
