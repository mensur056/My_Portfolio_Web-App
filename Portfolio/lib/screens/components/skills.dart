import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/animated_circular_progress.dart';

class Skills extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text('Skills',
              style: Theme.of(context).textTheme.subtitle2),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.87,
                label: "Flutter",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.67,
                label: "Mysql",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.74,
                label: "Firebase",
              ),
            ),
          ],
        )
      ],
    );
  }
}
