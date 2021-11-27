import 'package:flutter/material.dart';

import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/home/home_banner.dart';
import 'package:portfilo/screens/home/my_project.dart';
import 'package:portfilo/screens/main_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int appPhoto=1;
  int plantApp=1;

  void changePhoto() {
    setState(() {
      appPhoto = appPhoto + 1;
      if (appPhoto == 6) {
        appPhoto = 1;
      }
    });
  }
  void changePlant() {
    setState(() {
      plantApp = plantApp + 1;
      if (plantApp == 6) {
        plantApp = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SizedBox(
          height: defaultPadding,
        ),
        MyProject(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MyApps',
              style: Theme.of(context).textTheme.headline6,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: FlatButton(onPressed:changePhoto,child: Image.asset('images3/photo_$appPhoto.png')),
                  ),
                ),SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(onPressed:changePhoto,child: Image.asset('images3/photo_1.png')),
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(onPressed:changePhoto,child: Image.asset('images3/photo_1.png')),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
