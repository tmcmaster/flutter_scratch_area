import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_scratch_area/widgets/scratch_area/widget_tester.dart';

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
          body: ProviderScope(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
              ),
              child: Column(
                children: [
                  WidgetTester(
                    child: Text('Push the button to do an action.'),
                  ),
                  WidgetTester(
                    child: Text('Push the button to do an action.'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
