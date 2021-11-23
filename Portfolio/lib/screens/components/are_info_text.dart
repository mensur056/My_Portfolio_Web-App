import 'package:flutter/material.dart';

import '../../constants.dart';

class AreInfoText extends StatelessWidget {
  final String text;
  final String title;

  AreInfoText({required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
