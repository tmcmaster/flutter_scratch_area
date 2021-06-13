import 'package:flutter/material.dart';

class ViewPaneFullWidth extends StatelessWidget {
  final Widget child;
  final double height;
  const ViewPaneFullWidth({Key? key, required this.child, this.height = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: height,
      ),
      child: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
        ),
        child: child,
      ),
    );
  }
}
