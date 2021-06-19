import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenCurrentTaskList extends StatelessWidget {
  const CookingScreenCurrentTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView(
        children: ListTile.divideTiles(
          //          <-- ListTile.divideTiles
          context: context,
          tiles: [
            ListTile(
              title: Text('Horse'),
            ),
            ListTile(
              title: Text('Cow'),
            ),
            ListTile(
              title: Text('Camel'),
            ),
            ListTile(
              title: Text('Sheep'),
            ),
            ListTile(
              title: Text('Goat'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
