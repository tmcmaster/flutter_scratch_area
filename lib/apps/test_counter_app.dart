import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  static Widget create() => CounterApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // blue theme
        primarySwatch: Colors.blue,
      ),
      // Apply home route
      home: CounterAppPage(title: 'Counter App'),
    );
  }
}

class CounterAppPage extends StatefulWidget {
  CounterAppPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CounterAppPageState createState() => _CounterAppPageState();
}

class _CounterAppPageState extends State<CounterAppPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Button Pressed Count',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
