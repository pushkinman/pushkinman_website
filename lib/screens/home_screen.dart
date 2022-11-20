import 'package:flutter/material.dart';
import 'package:pushkinman_website/appbars/custom_appbar.dart';
import 'package:pushkinman_website/data/projects_description.dart';
import 'package:pushkinman_website/sectors/about_page.dart';
import 'package:pushkinman_website/widgets/project_item.dart';

import '../sectors/welcome_page.dart';
import '../sectors/work_experience.dart';

class HomePage extends StatelessWidget {
  late List<GlobalKey> navigationKeys;

  List<GlobalKey> GenerateKeys(int count){
    return List.generate(count, ((index) => GlobalKey()));
  }

  HomePage(){
    navigationKeys = GenerateKeys(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomAppbar(navigationKeys)),
      body: SingleChildScrollView(
        child: Column(children: [
          WelcomePage(navigationKeys[0]),
          AboutPage(navigationKeys[1]),
          WorkExperience(navigationKeys[2]),
        ],)
      ),
    );
  }
}
