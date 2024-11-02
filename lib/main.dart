import 'package:flutter/material.dart';
import 'package:flutter_scratch_area/apps/test_carousel_app.dart';
import 'package:flutter_scratch_area/apps/test_counter_app.dart';
import 'package:flutter_scratch_area/apps/test_flutter_mobile_vision.dart';
import 'package:flutter_scratch_area/apps/test_graphview_app.dart';

typedef WidgetCreateFunction = Widget Function();

class Apps {
  static const String COUNTER = 'counter';
  static const String CAROUSEL = 'carousel';
  static const String GRAPH_VIEW = 'graph-view';
}

void main() async {
  final map = <String, WidgetCreateFunction>{
    Apps.COUNTER: CounterApp.create,
    Apps.CAROUSEL: CarouselDemo.create,
    Apps.GRAPH_VIEW: GraphViewDemo.create,
    FlutterMobileVisionApp.NAME: FlutterMobileVisionApp.create,
  };

  const appName = String.fromEnvironment('app', defaultValue: Apps.COUNTER);

  final createAppWidget = map[appName] ?? FlutterMobileVisionApp.create;

  // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  //   await DesktopWindow.setMaxWindowSize(Size(500, 500));
  // }

  runApp(createAppWidget());
}
