import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'sellAsk_controller.dart';

class SellAskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellAskController>(() => SellAskController());
  }
}
