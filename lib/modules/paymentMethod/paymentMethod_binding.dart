import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'paymentMethod_controller.dart';

class PaymentMethodBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodController>(() => PaymentMethodController());
  }
}
