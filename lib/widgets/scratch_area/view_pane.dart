import 'package:flutter/material.dart';

class ViewPane extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const ViewPane({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (width == double.infinity
        ? _ViewPaneVariableHeight(
            height: height,
            child: child,
          )
        : (height == double.infinity
            ? _ViewPaneVariableWidth(
                width: width,
                child: child,
              )
            : _ViewPaneVariableBoth(
                width: width,
                height: height,
                child: child,
              )));
  }
}

class _ViewPaneVariableBoth extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const _ViewPaneVariableBoth({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: width,
              height: height,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.green)),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class _ViewPaneVariableHeight extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const _ViewPaneVariableHeight({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: height,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.green)),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class _ViewPaneVariableWidth extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const _ViewPaneVariableWidth({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: width,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
