import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              ),Column(children: [Text('Discover My Amazing Art Space!',style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold))],)
            ],
          ),
        )
      ],
    );
  }
}
