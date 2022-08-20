import 'package:get/get.dart';

class OrderController extends GetxController {
  var isPressedOnCurrentOrder = true.obs;

  void changeIsPressedOnCurrentOrder() {
    isPressedOnCurrentOrder.value = !isPressedOnCurrentOrder.value;
  }
}
