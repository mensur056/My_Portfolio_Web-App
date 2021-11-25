import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/my_build_animated_text.dart';
import 'package:portfilo/screens/home/home_banner.dart';
import 'package:portfilo/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Text(
          'My Project',
          style: Theme.of(context).textTheme.headline6,
        ),

      ],
    );
  }
}
