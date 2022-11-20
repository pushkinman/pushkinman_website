import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WorkExperienceItem extends StatelessWidget {
final String position;
final String description;

  const WorkExperienceItem(this.position, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            position,
            //"Middle Unity Developer",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            description,
            //"EPAM - Xerox / Jul 2021 - Jun 2022",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
