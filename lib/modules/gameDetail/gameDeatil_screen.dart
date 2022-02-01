import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';

import 'gameDetail.dart';

GameDetailController gdcontroller = GameDetailController();

class GameDetailScreen extends GetView<GameDetailController> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      home: _buildWidget(context),
    );
  }

  Widget _buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        leading: IconButton(
        icon: const Icon(
            Icons.arrow_back,
          color: Colors.black,
        ),
          onPressed: () {
            Get.offNamed(Routes.HOME);
          },
        ),
        actions: <Widget>[
          Obx( () => DropdownButton<String>(
            hint: const Text(
              'menu',
            ),
            onChanged: (newValue) {
              //gdcontroller.setmenuSelected(newValue.toString());
              if(newValue.toString() == 'MyAddress'){
                 Get.toNamed(Routes.BUYADDRESS);
              }
            },
            value: gdcontroller.menuselected.value,
            items: [
              DropdownMenuItem(
                child: const Text("MyAccount"),
                value: gdcontroller.menuList[0],
              ),
              DropdownMenuItem(
                child: const Text("MyAddress"),
                value: gdcontroller.menuList[1],
              ),
              DropdownMenuItem(
                child: const Text("Help"),
                value: gdcontroller.menuList[2],
              ),
            ],
          ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
      child:
      SafeArea(
        child: Column(
          children: [
            Container(
                width: SizeConfig().screenWidth,
                decoration: const BoxDecoration(
                color:  Color(0xffd9d9d9),
                ),
                height: 50.0,
                  child: Obx( () => DropdownButton<String>(
                hint: const Text(
                  'Condition',
                ),
                onChanged: (newValue) {
                  gdcontroller.setconditionSelected(newValue.toString());
                },
                value: gdcontroller.conditionselected.value,
                items: [
                  DropdownMenuItem(
                  child: const Text("Good"),
                    value: gdcontroller.valueList[0],
                  ),
                  DropdownMenuItem(
                    child: const Text("Bad"),
                    value: gdcontroller.valueList[1],
                  ),],
                ),
              ),
            ),
          const SizedBox(height: 20.0),
          const Image(
            image: AssetImage('image/image.png'),
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 20.0),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: true,
            child: Container(
              width: SizeConfig().screenWidth * 0.8,
              height: 200.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
              ),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration.collapsed(
                hintText: ' Please enter a lot of text',
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Obx(() => Text(
            'Condition: ${gdcontroller.conditionselected.value}',
            style: const TextStyle(fontSize: 25),
          )),
          const SizedBox(height: 10.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => TextButton(
                  child: Text(
                      '${gdcontroller.buy_value.value}\nBuy Now / Bid',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20) //here
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)), //here
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.blue)
                          )
                      )
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.BUY_BID);
                  }
              )),
              SizedBox(width: SizeConfig().screenWidth * 0.1), //here
              Obx(() => TextButton(
                  child: Text(
                      '${gdcontroller.sell_value.value}\nSell Now / Ask',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20)
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.green)
                          )
                      )
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.SELL_ASK);
                  }
              )),
            ],
          ),
          const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Current Buy/Bid',
                    style: TextStyle(fontSize: 20)
                ),
                SizedBox(width: SizeConfig().screenWidth * 0.15),
                const Text('Current Sell/Ask',
                    style: TextStyle(fontSize: 20)
                )
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.39, //here
                  height: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: Obx(() => ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: gdcontroller.buydata.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buylistTile(gdcontroller.buydata[index]);
                    },
                  ),
                  ),
                ),
              ),
              SizedBox(width: SizeConfig().screenWidth * 0.11),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.39,
                  height: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: Obx(() => ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: gdcontroller.selldata.length,
                      itemBuilder: (BuildContext context, int index) {
                        return selllistTile(gdcontroller.selldata[index]);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          ],
          ),
        ),
      ),
    );
  }
}

class buylistTile extends StatelessWidget {
  var _value;

  buylistTile(this._value);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_value),
      onTap: () {
        log('ohb: $_value');
        gdcontroller.setBuyValue(_value);
      },
    );
  }
}

class selllistTile extends StatelessWidget {
  var _value;

  selllistTile(this._value);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_value),
      onTap: () {
        log('ohb: $_value');
        gdcontroller.setSellValue(_value);
      },
    );
  }
}