import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/order_controller.dart';

class EmptyOrder extends StatelessWidget {
  EmptyOrder({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    final orderController = Get.find<OrderController>();

    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: size.height * .14,
            ),
            Image.asset('assets/images/orders.jpg'),
            SizedBox(
              height: size.height * .08,
            ),
            Text(
              orderController.isPressedOnCurrentOrder.value
                  ? 'No Current Orders'
                  : 'No Expired Orders',
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
