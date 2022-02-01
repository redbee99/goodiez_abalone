import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SellAskController extends GetxController {
  var trandata = <String>['\$10.5/park1cb (Buyer ID)', '\$10/park1cb (Buyer ID)', '\$9/park1cb (Buyer ID)', '\$8/park1cb (Buyer ID)'].obs;

  @override
  void onInit() async {
    super.onInit();
    loadCollections();
  }

  Future<void> loadCollections() async {
    print('LoadCollections');
  }
}