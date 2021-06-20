import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenFabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 10, 0),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      //decoration: BoxDecoration(border: Border.all(color: theme.colorScheme.primary)),
      //color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.record_voice_over_rounded),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.mic_rounded),
          ),
        ],
      ),
    );
  }
}
