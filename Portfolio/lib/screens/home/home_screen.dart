import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
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
                    DefaultTextStyle(
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
                    )
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

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: '<', children: [
        TextSpan(
            text: 'flutter',
            style: TextStyle(
              color: primaryColor,
            )),
        TextSpan(text: '>')
      ]),
    );
  }
}
