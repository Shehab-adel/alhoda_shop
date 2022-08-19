import 'package:get/get.dart';

class CartController extends GetxController {
  var isAddedPress = false.obs;

  void changeIsPressToCart() {
    isAddedPress.value = !isAddedPress.value;
  }
}
