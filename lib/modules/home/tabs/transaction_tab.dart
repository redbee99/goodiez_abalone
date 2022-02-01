import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/modules/home/home.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';

HomeController homeController = HomeController();

class TransactionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: homeController.trandata.length,
      itemBuilder: (BuildContext context, int index) {
        return listTile(homeController.trandata[index]);
      },
    ),
    );
  }
}

class listTile extends StatelessWidget {
  var _value;

  listTile(this._value);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_value),
      onTap: () {
        log('ohb: $_value');
        if(_value == 'Buy It Now'){
          Get.toNamed(Routes.SHIPPING_LABEL);
        }
        else{
          Get.toNamed(Routes.TRANSIT_ITEM);
        }
      },
    );
  }
}