import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage('images2/mensur.jpg'),
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