import 'package:flutter/material.dart';
import 'package:portfilo/constants.dart';
import 'package:portfilo/models/project.dart';
import 'package:portfilo/screens/components/my_build_animated_text.dart';
import 'package:portfilo/screens/home/home_banner.dart';
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
        Text(
          'My Project',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          itemCount: demo_projects.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(defaultPadding),
            color: secondaryColor,
            child: Column(
              children: [
                Text(
                  demo_projects[0].title!,
                  maxLines: 2,overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle2,
                ),Text(demo_projects[0].description!)
              ],
            ),
          ),
        )
      ],
    );
  }
}
