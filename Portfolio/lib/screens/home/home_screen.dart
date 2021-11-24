import 'package:flutter/material.dart';
import 'package:portfilo/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      AspectRatio(
        aspectRatio: 3,
        child: Image.asset('images2/bg.jpeg'),
      )
    ]);
  }
}
