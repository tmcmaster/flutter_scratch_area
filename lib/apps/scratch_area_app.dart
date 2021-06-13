import 'package:flutter/material.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/view_pane.dart';

class ScratchArea extends StatelessWidget {
  static Widget create() => ScratchArea();

  static const String title = 'Scratch Area';
  const ScratchArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: ViewPane(
            width: 100,
            height: 500,
            child: Text(
              'Push the button to do an action.',
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Do Action',
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
