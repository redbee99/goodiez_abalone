import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';
import 'paymentMethod_controller.dart';

class PaymentMethodScreen extends GetView<PaymentMethodController> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        const SizedBox(height: 20.0),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Container(
            width: SizeConfig().screenWidth * 0.8,
            height: 50.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
            ),
            child: const TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration.collapsed(
                hintText: 'Credit Card Number',
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Container(
                width: 200,
                height: 50.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Exp MM/YY',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 100),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Container(
                width: 100,
                height: 50.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration.collapsed(
                    hintText: 'CVC',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage('image/paypal.png'),
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 20),
            Text('Pay With Paypal',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
          ],
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
                hintText: ' Shipping Address\n (Entered Previously)',
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        const Text('Condition: New',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        const SizedBox(height: 20.0),
        const Text("Buy/Bid: \$xx.xx",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        const SizedBox(height: 50.0),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Container(
            width: SizeConfig().screenWidth * 0.8,
            height: 150.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
            ),
            child: const TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration.collapsed(
                hintText: ' Description (Entered)',
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 100.0),
        TextButton(
            child: const Text(
                'Confirm',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14)
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff666666)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Color(0xff666666))
                    )
                )
            ),
            onPressed:() {
              Get.offAllNamed(Routes.HOME);
            }),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}