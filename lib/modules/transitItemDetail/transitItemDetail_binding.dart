import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'transitItemDetail_controller.dart';

class TransitItemDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransitItemDetailController>(() => TransitItemDetailController());
  }
}
