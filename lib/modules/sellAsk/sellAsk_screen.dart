import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';


import 'sellAsk_controller.dart';

SellAskController sellAskController = SellAskController();

class SellAskScreen extends GetView<SellAskController> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      home: _buildWidget(context),
    );
  }

  Widget _buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Column(
          children: [
            const SizedBox(height: 8.0),
            const Text('Zelda Breath of the Wild',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
            ),
            const SizedBox(height: 8.0),
            const Text('Nintendo Switch',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 8.0),
            const Text('Condition: New (New)',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 8.0),
            const Image(
              image: AssetImage('image/image.png'),
              width: 400,
              height: 400,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 8.0),
            const Text('Sell Now',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.green,
              ),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Obx(() => ListView.builder(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: sellAskController.trandata.length,
                itemBuilder: (BuildContext context, int index) {
                  return listTile(sellAskController.trandata[index]);
                },
              ),
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton(
                child: const Text(
                    'Place New Ask',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30)
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.black)
                        )
                    )
                ),
                onPressed: () {
                  Get.toNamed(Routes.PLACE_SELL_ASK);
                }
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      )
    );
  }
}

class listTile extends StatelessWidget {
  final _value;

  const listTile(this._value);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_value),
      subtitle: const Text('I am looking for,,,'),
      onTap: () {
        log('ohb: $_value');
        Get.toNamed(Routes.SELL_NOW);
      },
    );
  }
}