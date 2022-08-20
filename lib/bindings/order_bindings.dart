import 'package:alhoda/controller/order_controller.dart';
import 'package:get/get.dart';

class OrderBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(OrderController());
  }
}
