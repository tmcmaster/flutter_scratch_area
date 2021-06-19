import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_tester/widget_tester.dart';

class WidgetTesterContainer extends StatelessWidget {
  const WidgetTesterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 1,
      // Generate 100 widgets that display their index in the List.
      children: [
        ...List.generate(4, (index) {
          return Center(
            child: WidgetTester(
              children: [
                Text(
                  'This is some text that is longer than it needs to be, but is good for testing line wrapping.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          );
        })
      ],
    );
  }
}
