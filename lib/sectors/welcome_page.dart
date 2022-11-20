import 'package:coolicons/coolicons.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:pushkinman_website/settings/settings.dart';

class WelcomePage extends StatelessWidget {
  static const String profileImage = 'assets/images/VKProfile.jpg';

  final GlobalKey key;
  WelcomePage(this.key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      color: CustomColors.grey,
      height: MediaQuery.of(context).size.height - kToolbarHeight,
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 100,
                    right: 50,
                    top: 100,
                    bottom: 10,
                  ),
                  child: Text(
                    'Hi, I am Anton, a Senior Unity Developer',
                    style:
                        TextStyle(fontSize: 50, color: CustomColors.deepBlue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 100, right: 50, top: 10, bottom: 100),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Coolicons.LinkedIn)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Coolicons.github)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Coolicons.facebook)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Coolicons.instagram)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Coolicons.youtube)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 100,
              top: 100,
              bottom: 100,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(profileImage),
            ),
          ),
        ],
      ),
    );
  }
}
