import 'package:flutter/material.dart';
import 'package:portfilo/models/project.dart';
import 'package:portfilo/screens/home/project_card.dart';
import '../../constants.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}