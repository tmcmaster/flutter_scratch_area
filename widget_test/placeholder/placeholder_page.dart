import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import '../shared/shared_style.dart';

class PlaceholderPage extends StatelessWidget {
  final String image;
  PlaceholderPage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ]),
        )
      ],
    );
  }
}

void main() {
  FlutterWorkbench.runAppContainer(
    title: 'Placeholder Page',
    styles: SharedStyle.themes,
    child: PlaceholderPage(
      image: 'assets/images/home.png',
    ),
  );
}
