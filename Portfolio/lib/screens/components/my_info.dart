import 'dart:math';

import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
 int photoNumber=1;
 void changeFood() {
   setState(() {
    photoNumber = Random().nextInt(3) + 1;

   });
 }


 @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Spacer(flex: 2,),
            FlatButton(onPressed:changeFood,
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                AssetImage('images2/mensur_$photoNumber.jpg'),
              ),
            ),Spacer(),
            Text(
              'Mənsur Sərxanov',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Flutter Developer & Frontend Developer \n The Flutter Way',
              style: TextStyle(height: 1.5),textAlign:TextAlign.center,
            ),Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}