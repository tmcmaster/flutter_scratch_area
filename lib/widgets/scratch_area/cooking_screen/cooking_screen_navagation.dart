import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      //decoration: BoxDecoration(border: Border.all(color: theme.colorScheme.primary)),
      //color: theme.colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.grey.shade400, width: 1),
            ),
            child: Text(
              '<',
              style: theme.textTheme.headline3!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Text('31:24', style: theme.textTheme.headline2),
          TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.grey.shade400, width: 1),
            ),
            child: Text(
              '>',
              style: theme.textTheme.headline3!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
