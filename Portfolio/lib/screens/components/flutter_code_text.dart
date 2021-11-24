import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';

class FlutterCodeText extends StatelessWidget {


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
  }}