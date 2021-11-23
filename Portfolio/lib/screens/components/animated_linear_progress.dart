import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';

class AnimatedLinearProgress extends StatelessWidget {
  final double percentage;
  final String label;

  const AnimatedLinearProgress({required this.percentage, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text((value * 100).toInt().toString() + "%")
                ],
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          )),
    );
  }
}
