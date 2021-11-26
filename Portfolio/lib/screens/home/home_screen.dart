import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/screens/home/home_banner.dart';
import 'package:portfilo/screens/home/my_project.dart';
import 'package:portfilo/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SizedBox(
          height: defaultPadding,
        ),
        MyProject(),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MyApps',
             style: Theme.of(context).textTheme.headline6,), GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: defaultPadding,
                  mainAxisSpacing: defaultPadding),
              itemBuilder: (context, index) => Container( color: secondaryColor,)
            )
          ],
        )
      ],
    );
  }
}
