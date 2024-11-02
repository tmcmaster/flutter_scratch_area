import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class FlutterMobileVisionApp extends StatelessWidget {
  static const String NAME = 'ocr';

  static Widget create() => FlutterMobileVisionApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // blue theme
        primarySwatch: Colors.blue,
      ),
      // Apply home route
      home: FlutterMobileVisionAppPage(title: 'FlutterMobileVision App'),
    );
  }
}

class FlutterMobileVisionAppPage extends StatefulWidget {
  FlutterMobileVisionAppPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FlutterMobileVisionAppPageState createState() => _FlutterMobileVisionAppPageState();
}

class _FlutterMobileVisionAppPageState extends State<FlutterMobileVisionAppPage> {
  String _text = 'Initial Text';

  @override
  void initState() {
    super.initState();
    FlutterMobileVision.start().then((previewSizes) => setState(() {
          print('OCR Ready to go.');
        }));
  }

  Future<Null> _ocrReadText() async {
    setState(() {
      _text = 'About to OCR scan';
    });
    List<OcrText> texts = [];
    try {
      texts = await FlutterMobileVision.read(
        flash: false,
        autoFocus: true,
        multiple: true,
        waitTap: false,
        showText: true,
        preview: Size(200, 200),
        camera: FlutterMobileVision.CAMERA_FRONT,
        fps: 2.0,
      );
      setState(() {
        _text = texts.map((ot) => ot.value).join(' ');
        print('OCR TEXT: $_text');
      });
    } catch (e) {
      texts.add(OcrText('Failed to recognize text.'));
      setState(() {
        _text = 'Failed to recognize text: $e';
        print('OCR ERROR: $_text');
      });
    }

    if (!mounted) return;
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
              '$_text',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _ocrReadText,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
