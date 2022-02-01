import 'package:get/get.dart';
import 'package:goodiez_abalone/modules/search/search.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
