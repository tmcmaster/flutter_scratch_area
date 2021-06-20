import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenStageTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      //decoration: BoxDecoration(border: Border.all(color: theme.colorScheme.primary)),
      //color: theme.colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Tab(child: Text('PREP', style: theme.textTheme.headline3)),
          Tab(child: Text('COOK', style: theme.textTheme.headline3)),
          Tab(child: Text('PLATE', style: theme.textTheme.headline3)),
        ],
      ),
    );
  }
}
