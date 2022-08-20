import 'package:alhoda/controller/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentAndExpiredOrders extends StatelessWidget {
  CurrentAndExpiredOrders({Key? key}) : super(key: key);

  late Size size;
  final orderController = Get.find<OrderController>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Obx(() => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (orderController.isPressedOnCurrentOrder.value) {
                      return;
                    }
                    orderController.changeIsPressedOnCurrentOrder();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 20, right: 25, bottom: 15),
                    child: Text(
                      'Current Orders',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.teal.withOpacity(0.7)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (!orderController.isPressedOnCurrentOrder.value) {
                      return;
                    }
                    orderController.changeIsPressedOnCurrentOrder();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, top: 20, right: 25, bottom: 15),
                    child: Text(
                      'Expired Orders',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (orderController.isPressedOnCurrentOrder.value) {
                      return;
                    }
                    orderController.changeIsPressedOnCurrentOrder();
                  },
                  child: orderController.isPressedOnCurrentOrder.value
                      ? Container(
                          color: Colors.orangeAccent,
                          height: 2,
                          width: size.width * 0.48,
                        )
                      : Container(),
                ),
                InkWell(
                  onTap: () {
                    if (!orderController.isPressedOnCurrentOrder.value) {
                      return;
                    }
                    orderController.changeIsPressedOnCurrentOrder();
                  },
                  child: !orderController.isPressedOnCurrentOrder.value
                      ? Container(
                          color: Colors.orangeAccent,
                          height: 2,
                          width: size.width * 0.48,
                        )
                      : Container(),
                )
              ],
            )
          ],
        ));
  }
}
