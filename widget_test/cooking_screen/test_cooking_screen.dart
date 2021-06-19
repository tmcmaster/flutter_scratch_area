import 'package:flutter/material.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_style.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:screen_tester/screen_tester.dart';

void main() {
  FlutterWorkbench.runScreenTesterApp(
    title: 'Cooking Screen',
    styles: CookingScreenStyle.themes,
    options: ScreenTesterOptions(
      //device: Devices.ios.iPhone11,
      image: Image.asset('assets/images/foodjitsu_screen.png', scale: 2.15),
    ),
    child: CookingScreen(),
  );
}
