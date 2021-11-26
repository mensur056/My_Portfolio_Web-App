import 'package:flutter/material.dart';
import 'package:portfilo/models/project.dart';
import 'package:portfilo/responsive.dart';
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
        Responsive(
          mobile: ProjectGridView(crossAxisCount: 1,childAspectRatio: 1.7,),
          tablet: ProjectGridView(
            childAspectRatio: 1.1,
          ),
          mobileLarge: ProjectGridView(
            crossAxisCount: 2,
          ),
          desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const ProjectGridView({this.crossAxisCount = 3, this.childAspectRatio = 1.3});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
