import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/shared/shared.dart';
import 'transitItemDetail.dart';

class TransitItemDetailScreen extends GetView<TransitItemDetailController> {

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
                height: 100.0,
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
                    hintText: ' Item Description\n (Seller Entered)',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
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
                    hintText: ' Tracking History',
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}