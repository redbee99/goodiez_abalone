import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'confirmBuyAddress_controller.dart';

class ConfirmBuyAddressBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmBuyAddressController>(() => ConfirmBuyAddressController());
  }
}
