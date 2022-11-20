import 'dart:developer';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:pushkinman_website/settings/settings.dart';

import '../widgets/work_experience_item.dart';

class WorkExperience extends StatelessWidget {
  static const String aboutMeText =
      '- "I have been a Unity developer for over 5 years, involved in VR/AR/MR projects and mobile development. I worked for top companies like Xerox and leading game studios like PeopleFun. I love what I do and want not only to help, but to inspire people".';

  final GlobalKey key;
  WorkExperience(this.key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      color: CustomColors.grey,
      height: (MediaQuery.of(context).size.height - kToolbarHeight),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 200, vertical: 100),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 100),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Text(
                          '- Work Experience',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WorkExperienceItem("Senior Unity Developer", "EPAM - PeopleFun / Jun 2022 - Nov 2022"),
                            WorkExperienceItem("Middle Unity Developer", "EPAM - Xerox / Jul 2021 - Jun 2022"),
                            WorkExperienceItem("Middle Unity Developer", "RTU IT Lab / Aug 2019 - Jun 2021"),
                            WorkExperienceItem("Junior Unity Developer", "RTU IT Lab / Feb 2018 - Aug 2019"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Text(
                        '- Education',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "RTU MIREA - Bachelor",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text(
                            "RTU MIREA - Masters",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
