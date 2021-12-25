import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  int photoNumber = 1;

  void changeFood() {
    setState(() {
      photoNumber++;
      if (photoNumber == 5) {
        photoNumber = 1;
      }
    });
  }

  void changeBack() {
    setState(() {
      photoNumber--;
      if (photoNumber == 0) {
        photoNumber = 4;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: changeBack,
                    hoverColor: Color(0xFF242430),
                    splashColor: Color(0xFF242430),
                    highlightColor: Color(0xFF242430),
                    child: Icon(Icons.arrow_back_rounded)),
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('images2/mensur_$photoNumber.jpg'),
                ),
                FlatButton(
                    onPressed: changeFood,
                    hoverColor: Color(0xFF242430),
                    splashColor: Color(0xFF242430),
                    highlightColor: Color(0xFF242430),
                    child: Icon(Icons.arrow_forward_rounded)),
              ],
            ),
            Spacer(),
            Text(
              'Mənsur Sərxanov',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Flutter Developer & Frontend Developer \n The Flutter Way',
              style: TextStyle(height: 1.5),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
