import 'package:flutter/material.dart';
import 'package:pushkinman_website/data/projects_description.dart';
import 'package:pushkinman_website/widgets/project_item.dart';

class HomePage extends StatelessWidget {
  final List<ProjectDescription> projects = PROJECTS_DATA;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'PushkinMan',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
                ),
              ),
            ),
            ...projects
                .map((project) =>
                    ProjectItem(project.title, project.description, project.imageURL))
                .toList(),
          ],
        ),
      ),
    );
  }
}
