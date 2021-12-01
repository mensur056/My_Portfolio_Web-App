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
  int appPhoto = 1;
  int appCalculator = 1;
  int appMusic = 1;
  int appPlant=1;

  void changePhoto() {
    setState(() {
      appPhoto = appPhoto + 1;
      if (appPhoto == 6) {
        appPhoto = 1;
      }
    });
  }

  void changeCalculator() {
    setState(() {
      appCalculator = appCalculator + 1;
      if (appCalculator == 3) {
        appCalculator = 1;
      }
    });
  }

  void changeMusic() {
    setState(() {
      appMusic = appMusic + 1;
      if (appMusic == 3) {
        appMusic = 1;
      }
    });
  }
  void changePlant() {
    setState(() {
      appPlant = appPlant + 1;
      if (appPlant == 3) {
        appPlant = 1;
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MyApps',
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                children: [
                  Container(
                    child: FlatButton(
                        onPressed: changeCalculator,
                        child: Image.asset(
                            'images4/calculator_$appCalculator.png')),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: changePhoto,
                        child: Image.asset('images3/photo_$appPhoto.png')),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: changeMusic,
                        child: Image.asset('images4/music_$appMusic.png')),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: changePlant,
                        child: Image.asset('images4/plant1$appPlant.png')),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
