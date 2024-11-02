import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import '../shared/shared_style.dart';

class PlaceholderApp extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  final List<Widget> children;
  PlaceholderApp({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      children: children,
    );
  }
}

class Page extends StatelessWidget {
  final String image;
  const Page({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fitWidth,
        )
      ],
    );
  }
}

void main() {
  FlutterWorkbench.runAppContainer(
    title: 'Placeholder App',
    styles: SharedStyle.themes,
    child: PlaceholderApp(
      children: [
        Page(image: 'assets/images/home.png'),
        Page(image: 'assets/images/recipe.png'),
        Page(image: 'assets/images/favourite.png'),
      ],
    ),
  );
}
