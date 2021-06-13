import 'package:flutter/material.dart';

class ViewPaneFullHeight extends StatelessWidget {
  final Widget child;
  const ViewPaneFullHeight({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
