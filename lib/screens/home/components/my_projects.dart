import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectGridView(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
          ),
          tablet: ProjectGridView(
            childAspectRatio: 1.0,
          ),
          desktop: ProjectGridView(
            // childAspectRatio: 1.2,
          ),
        ),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.2,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
