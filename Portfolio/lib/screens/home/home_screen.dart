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
  int appGetitDone = 1;
  int appCalculator = 1;
  int appMusic = 1;
  int appPlant = 1;
  int appShop = 1;
  int appSpotify = 1;

  void changePhoto() {
    setState(() {
      appGetitDone = appGetitDone + 1;
      if (appGetitDone == 6) {
        appGetitDone = 1;
      }
    });
  }

  void changeSpotify() {
    setState(() {
      appSpotify = appSpotify + 1;
      if (appSpotify == 6) {
        appSpotify = 1;
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

  void changeShop() {
    setState(() {
      appShop = appShop + 1;
      if (appShop == 5) {
        appShop = 1;
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
                        onPressed: changeShop,
                        child: Image.asset('images4/shop_$appShop.png')),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: changePhoto,
                        child: Image.asset('images3/photo_$appGetitDone.png')),
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
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: changeCalculator,
                        child: Image.asset('images4/calcu_$appCalculator.png')),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: changeSpotify,
                        child: Image.asset('images4/spoti_$appSpotify.png')),
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
