import 'package:flutter/material.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_current_task_list.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_section_heading.dart';

class CookingScreen extends StatelessWidget {
  const CookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Should be dart')),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Column(
          children: [
            CookingScreenSectionHeading(),
            CookingScreenCurrentTaskList(),
          ],
        ),
      ),
    );
  }
}
