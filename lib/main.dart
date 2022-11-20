import 'package:flutter/material.dart';
import 'package:pushkinman_website/screens/home_screen.dart';
import 'package:pushkinman_website/settings/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PushkinMan website',
      theme: ThemeData(
        textTheme: TextTheme().copyWith(labelLarge: TextStyle(fontWeight: FontWeight.w800)),
        appBarTheme: AppBarTheme(color: CustomColors.orange)
      ),
      home: HomePage(),
    );
  }
}
