import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';
import 'shippingLabel.dart';

class ShippingLabelScreen extends GetView<ShippingLabelController> {
  ShippingLabelController slc = ShippingLabelController();
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
                    hintText: ' Shipping Address\n (Buyer Entered)',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Weight: ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                const SizedBox(width: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Container(
                    width: 50,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: '0',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text('lb',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                const SizedBox(width: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Container(
                    width: 50,
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration.collapsed(
                        hintText: '0',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text('oz',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Shipping Service',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
             ),
            Obx( () => DropdownButton<String>(
              hint: const Text(
                'menu',
              ),
              onChanged: (newValue) {
                slc.setmenuSelected(newValue.toString());
              },
              value: slc.menuselected.value,
              items: [
                DropdownMenuItem(
                  child: const Text("USPS First Class Mail"),
                  value: slc.menuList[0],
                ),
                DropdownMenuItem(
                  child: const Text("???"),
                  value: slc.menuList[1],
                ),
                DropdownMenuItem(
                  child: const Text("?????"),
                  value: slc.menuList[2],
                ),
              ],
            ),
            ),
            const SizedBox(width: 20),
            const Text('Shipping Costs: \$ 4.00',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                child: const Text(
                    'Print Lable',
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
                            side: BorderSide(color: const Color(0xff666666))
                        )
                    )
                ),
                onPressed:() {
                  Get.offAllNamed(Routes.HOME);
                }),
            const SizedBox(height: 50.0),
          ],
        ),
      )
    );
  }
}