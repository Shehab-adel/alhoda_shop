import 'package:get/get.dart';

import '../controller/cart_controller.dart';
import '../controller/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainController());
    Get.put(CartController());
  }
}
