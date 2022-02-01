import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'shippingLabel_controller.dart';

class ShippingLabelBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShippingLabelController>(() => ShippingLabelController());
  }
}
