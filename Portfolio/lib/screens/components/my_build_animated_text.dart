import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/flutter_code_text.dart';
import 'package:portfilo/screens/home/home_screen.dart';

class MyBuildAnimatedText extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle!,
      child: Row(
        children: [
          FlutterCodeText(),
          SizedBox(
            width: defaultPadding,
          ),
          Text('I build'),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(' web and mobile app',speed: Duration(milliseconds: 60)),
              TyperAnimatedText(' online and offline app',speed: Duration(milliseconds: 60)),
            ],
          ),SizedBox(
            width: defaultPadding,
          ),FlutterCodeText(),

        ],
      ),
    );
  }
}