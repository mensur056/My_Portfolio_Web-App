import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/animated_linear_progress.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {


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
        ),AnimatedLinearProgress(
          label: 'HTML',
          percentage: 0.46,
        ),
        AnimatedLinearProgress(
          label: 'Dart',
          percentage: 0.87,
        ),

        AnimatedLinearProgress(
          label: 'C++',
          percentage: 0.52,
        ),
      ],
    );
  }
}

