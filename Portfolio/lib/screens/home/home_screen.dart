import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/my_build_animated_text.dart';
import 'package:portfilo/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'images2/1136157.png',
                fit: BoxFit.cover,
              ),
              Container(
                color: darkColor.withOpacity(0.66),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Discover My Amazing \nArt Space!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold)),
                    MyBuildAnimatedText()
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
