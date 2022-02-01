import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';

import 'confirmBuyAddress.dart';


class ConfirmBuyAddressScreen extends GetView<ConfirmBuyAddressController> {

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
        backgroundColor: Colors.white,
        title: const Text('Shipping Address',
          style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  alignment: Alignment.center,
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0, //here
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: ' First Name',
                      hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc)), //here
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0), //here
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8, //here
                  height: 60.0, //here
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0), //here
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: ' Last Name',
                      hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: ' Country',
                      hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                      hintText: ' Address',
                      hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                      hintText: ' Address2',
                      hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                        hintText: ' City',
                        hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc))
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                        hintText: ' State/Province/Region',
                        hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc))
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                        hintText: ' Zip/Postal Code',
                        hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc))
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: Container(
                  width: SizeConfig().screenWidth * 0.8,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration.collapsed(
                        hintText: ' Phone Number',
                        hintStyle: TextStyle(fontSize: 30, color: Color(0xffcccccc))
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              TextButton(
                  child: const Text(
                      'NEXT',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40)
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(50, 12, 50, 12)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff666666)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: const BorderSide(color: Colors.brown)
                          )
                      )
                  ),
                  onPressed:() {
                    Get.toNamed(Routes.PAYMENT_METHOD);
                  }),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}