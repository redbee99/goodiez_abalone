import 'package:flutter/material.dart';

class SellingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (BuildContext context, int index) => new Container(
        child: Row(
          children: [
            Image(image:  AssetImage('image/image.png')),
            Text('My Collection - Selling'),
          ],
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}