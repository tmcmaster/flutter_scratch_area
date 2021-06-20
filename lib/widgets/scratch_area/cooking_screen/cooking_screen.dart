import 'package:flutter/material.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_current_task_list.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_fab_bar.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_navagation.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_stage_tabs.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/cooking_screen/cooking_screen_up_next_list.dart';

class CookingScreen extends StatelessWidget {
  const CookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Should be dart')),
      body: Scaffold(
        body: ListView(
          children: [
            CookingScreenCurrentTask(),
            CookingScreenUpNext(),
          ],
        ),
      ),
      floatingActionButton: CookingScreenFabBar(),
      bottomNavigationBar: SizedBox(
        height: 115,
        width: double.infinity,
        child: Column(
          children: [
            CookingScreenStageTabs(),
            CookingScreenNavigation(),
          ],
        ),
      ),
    );
  }
}
