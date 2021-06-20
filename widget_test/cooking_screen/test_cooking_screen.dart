import 'package:device_preview/device_preview.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_style.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:screen_tester/screen_tester.dart';

void main() {
  final selectedDevice = Devices.ios.iPhone11;
  // FlutterWorkbench.runFlutterWorkbenchApp(
  //   title: 'Cooking Screen',
  //   styles: CookingScreenStyle.themes,
  //   child: CookingScreenCurrentTask(),
  // );
  FlutterWorkbench.runScreenTesterApp(
    title: 'Cooking Screen',
    styles: CookingScreenStyle.themes,
    options: ScreenTesterOptions(
      device: Devices.ios.iPhone11,
      //image: 'assets/images/cooking_screen_green.png',
      //styledImage: 'assets/images/cooking_screen_%s.png',
      scale: 1.08,
      opacity: 0.5,
    ),
    child: CookingScreen(),
  );
}
