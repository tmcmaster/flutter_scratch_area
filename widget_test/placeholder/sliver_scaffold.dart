import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import '../shared/shared_style.dart';
import 'placeholder_widget.dart';

class SliverScaffold extends StatelessWidget {
  final List<Widget> bodyItems;
  final List<BottomNavigationBarItem> navItems;
  final Axis scrollDirection;

  const SliverScaffold({
    Key? key,
    required this.bodyItems,
    required this.navItems,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: scrollDirection,
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar'),
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/home_rated_card_image.png', fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              bodyItems,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: navItems,
      ),
    );
  }
}

void main() {
  FlutterWorkbench.runAppContainer(
    title: 'SliverScaffold',
    styles: SharedStyle.themes,
    child: SliverScaffold(
      scrollDirection: Axis.vertical,
      bodyItems: [
        Container(color: Colors.red, height: 100),
        SizedBox(
          height: 400,
          child: SliverScaffold(
            scrollDirection: Axis.vertical,
            bodyItems: [
              Container(color: Colors.purple, height: 100),
              PlaceholderWidget(),
              Container(color: Colors.green, height: 100),
            ],
            navItems: [
              BottomNavigationBarItem(
                icon: Icon(Icons.summarize),
                label: 'Summary',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.details),
                label: 'Details',
              ),
            ],
          ),
        ),
        Container(color: Colors.orange, height: 100),
        SizedBox(
          width: 1500,
          height: 200,
          child: Scaffold(
            body: CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(color: Colors.grey.shade100, height: 100, width: 300),
                    Container(color: Colors.grey.shade200, height: 100, width: 300),
                    Container(color: Colors.grey.shade300, height: 100, width: 300),
                    Container(color: Colors.grey.shade400, height: 100, width: 300),
                    Container(color: Colors.grey.shade500, height: 100, width: 300),
                    Container(color: Colors.grey.shade600, height: 100, width: 300),
                    Container(color: Colors.grey.shade700, height: 100, width: 300),
                    Container(color: Colors.grey.shade800, height: 100, width: 300),
                  ]),
                ),
              ],
            ),
          ),
        ),
        Container(color: Colors.yellow, height: 100),
        Container(color: Colors.pink, height: 100),
      ],
      navItems: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        )
      ],
    ),
  );
}
