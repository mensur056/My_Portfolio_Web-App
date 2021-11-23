import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/components/animated_circular_progress.dart';
import 'package:portfilo/screens/components/are_info_text.dart';
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
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.59,
                          label: "Firebase",
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
