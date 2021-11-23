import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 0.8),
            duration: defaultDuration,
            builder: (context, double value, child) => Column(
              children: [
                LinearProgressIndicator(
                      value: value,
                      color: primaryColor,
                      backgroundColor: darkColor,
                    ),
              ],
            ))
      ],
    );
  }
}
