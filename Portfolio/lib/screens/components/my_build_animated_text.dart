import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/responsive.dart';
import 'package:portfilo/screens/components/flutter_code_text.dart';

class MyBuildAnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding,
            ),
          Text('I build'),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(' web and mobile app',
                  speed: Duration(
                    milliseconds: 80,
                  )),
              TyperAnimatedText(' online and offline app',
                  speed: Duration(
                    milliseconds: 80,
                  )),
            ],
          ),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding,
            ),
          if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
        ],
      ),
    );
  }
}
