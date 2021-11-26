import 'package:flutter/material.dart';
import 'package:portfilo/models/project.dart';

import '../../constants.dart';

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
          ),TextButton(onPressed: (){}, child: Text('See Down ',style: TextStyle(color: Colors.orange),))
        ],
      ),
    );
  }
}