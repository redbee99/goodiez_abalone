import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameDetailController extends GetxController {
  final conditionselected = "Good".obs;
  final menuselected = "MyAccount".obs;
  var _valueList = <String>['Good', 'Bad'];
  final buy_value = "0".obs;
  final sell_value = "0".obs;

  var _menuList = <String>['MyAccount', 'MyAddress', 'Help'];

  var buydata = <String>[
    '10.5',
    '10',
    '9',
    '8'
  ].obs;

  var selldata = <String>[
    '10.5',
    '10',
    '9',
    '8'
  ].obs;

  get menuList => _menuList;

  void setmenuSelected(String value){
    menuselected.value = value;
  }

  void setconditionSelected(String value){
    conditionselected.value = value;
  }

  void setSellValue(String value){
    sell_value.value = value;
  }

  void setBuyValue(String value){
    buy_value.value = value;
  }

  get valueList => _valueList;

  @override
  void onInit() async {
    super.onInit();
    loadCollections();
  }

  Future<void> loadCollections() async {
    print('LoadCollections');
  }
}