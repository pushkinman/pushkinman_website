import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppbar extends StatelessWidget {
  final List<GlobalKey> navigationKeys;

  const CustomAppbar(this.navigationKeys);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: Text(
            'Me',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: () => Scrollable.ensureVisible(
            navigationKeys[0].currentContext!,
            duration: Duration(seconds: 1),
          ),
        ),
        TextButton(
          child: Text(
            'About',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: () => Scrollable.ensureVisible(
            navigationKeys[1].currentContext!,
            duration: Duration(seconds: 1),
          ),
        ),
        TextButton(
          child: Text(
            'Experience',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: () => Scrollable.ensureVisible(
            navigationKeys[2].currentContext!,
            duration: Duration(seconds: 1),
          ),
        ),
      ],
    );
  }
}
