import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';

import 'buyBid.dart';

class BuyBidScreen extends GetView<BuyBidController> {

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
            const SizedBox(height: 8.0),
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
                    hintText: ' Item Description\n (Seller Entered)',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton(
                child: const Text(
                    '\$Buy Now / Bid',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20) //here
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
                  Get.toNamed(Routes.BUYADDRESS);
                }
            ),
            const SizedBox(height: 8.0),
            TextButton(
                child: const Text(
                    'Place New Bid',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                    )
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
                  Get.toNamed(Routes.PLACE_BUY_BID);
                }
            ),
            const SizedBox(height: 8.0),
            const Text('Other Options',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 8.0),
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child:Row(
              children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage('image/image.png'),
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                      Text('11',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20
                        ),
                      ),
                    ],
                  ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('12',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('13',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('14',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('15',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('16',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('17',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                const SizedBox(width : 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/image.png'),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Text('18',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      )
    );
  }
}