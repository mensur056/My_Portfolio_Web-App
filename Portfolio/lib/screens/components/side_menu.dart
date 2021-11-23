import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/my_info.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreInfoText(
                    title: 'Residence',
                    text: 'Azerbaijan',
                  ),
                  AreInfoText(
                    title: 'City',
                    text: 'Baku',
                  ),
                  AreInfoText(
                    title: 'Age',
                    text: '18',
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text('Skills',
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.79,
                          label: "Flutter",
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.87,
                          label: "Dart",
                        ),
                      ),SizedBox(width: defaultPadding,),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.59,
                          label: "FireBase",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;

  const AnimatedCircularProgressIndicator(
      {required this.percentage, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

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
