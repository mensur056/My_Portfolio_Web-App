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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Project',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: defaultPadding,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: demo_projects.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: defaultPadding,
                  mainAxisSpacing: defaultPadding),
              itemBuilder: (context, index) => ProjectCard(
                project: demo_projects[index],
              ),
            )
          ],
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            project.description!,
            style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
