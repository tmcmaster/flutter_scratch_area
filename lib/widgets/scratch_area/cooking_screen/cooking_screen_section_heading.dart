import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenSectionHeading extends StatelessWidget {
  const CookingScreenSectionHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.fromLTRB(26, 0, 0, 0),
      //padding: EdgeInsets.fromLTRB(26, 26, 0, 0),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Text(
              'CURRENT TASK',
              textAlign: TextAlign.left,
              style: theme.textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
