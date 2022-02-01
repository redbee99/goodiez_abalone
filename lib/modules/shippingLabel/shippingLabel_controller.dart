import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ShippingLabelController extends GetxController {
  var menuselected = "USPS First Class Mail".obs;

  var menuList = <String>['USPS First Class Mail', '???', '?????'];

  
  @override
  void onInit() async {
    super.onInit();
    loadCollections();
  }

  Future<void> loadCollections() async {
    print('LoadCollections');
  }

  void setmenuSelected(String string) {
    menuselected.value = string;
  }
}