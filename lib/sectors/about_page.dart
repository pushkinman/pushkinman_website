import 'dart:developer';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:pushkinman_website/settings/settings.dart';

class AboutPage extends StatelessWidget {
  static const String aboutMeText =
      '- "I have been a Unity developer for over 5 years, involved in VR/AR/MR projects and mobile development. I worked for top companies like Xerox and leading game studios like PeopleFun. I love what I do and want not only to help, but to inspire people".';

  final GlobalKey key;
  AboutPage(this.key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      color: Colors.white,
      height: (MediaQuery.of(context).size.height - kToolbarHeight),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 500, vertical: 100),
        child: Center(
          child: Text(
            aboutMeText,
            style: Settings.quoteTextStyle,
          ),
        ),
      ),
    );
  }
}
