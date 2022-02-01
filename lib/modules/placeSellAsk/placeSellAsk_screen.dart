import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';
import 'placeSellAsk.dart';

class placeSellAskScreen extends GetView<placeSellAskController> {

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Row(
                children: const [
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width : 15.0),
                  Image(
                    image: AssetImage('image/image.png'),
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('\$13\nLowest Ask',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(width: 70),
                IconButton(
                  icon: Image.asset('image/camera.png'),
                  iconSize: 50,
                  onPressed: () {

                  },
                )
              ],
            ),
            const SizedBox(height: 8.0),
            const Text('Place Sell/Ask',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 8.0),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Container(
                width: 300,
                height: 50.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed(
                    hintText: '\$xx.xx',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text('Describle What You Are Looking For',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Container(
                width: SizeConfig().screenWidth * 0.8,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration.collapsed(
                    hintText: ' Enter Description',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton(
                child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30)
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
                onPressed: () {
                  Get.toNamed(Routes.SELL_PAY_OUT);
                }
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      )
    );
  }
}