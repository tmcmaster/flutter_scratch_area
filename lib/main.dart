import 'package:flutter/material.dart';
import 'package:flutter_scratch_area/apps/test_carousel_app.dart';
import 'package:flutter_scratch_area/apps/test_counter_app.dart';
import 'package:flutter_scratch_area/apps/test_graphview_app.dart';

typedef WidgetCreateFunction = Widget Function();

class Apps {
  static const String COUNTER = 'counter';
  static const String CAROUSEL = 'carousel';
  static const String GRAPH_VIEW = 'graph-view';
}

void main() {
  final map = <String, WidgetCreateFunction>{
    Apps.COUNTER: CounterApp.create,
    Apps.CAROUSEL: CarouselDemo.create,
    Apps.GRAPH_VIEW: GraphViewDemo.create,
  };

  const appName = String.fromEnvironment('app', defaultValue: Apps.COUNTER);

  final createAppWidget = map[appName] ?? CounterApp.create;

  runApp(createAppWidget());
}
