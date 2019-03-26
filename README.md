# flutter_pin_pad

An easily customizable Flutter pin pad widget.

## Basic usage

```
import 'package:flutter/material.dart';

import 'package:flutter_pin_pad/flutter_pin_pad.dart';
import 'package:flutter_pin_pad/pin_pad_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pin Pad Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Pin Pad Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
            height: 400,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: PinPad(
              pinPadThemeData: PinPadThemeData(
                clearTextStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                backspaceIcon: Icon(Icons.arrow_back),
              ),
              onChange: (String text) {
                print("ON PIN CHANGE: $text");
              },
              onSubmit: (String pin) {
                print("PIN: $pin");
              },
              pinLength: 6,
            ),
          ),
    );
  }
}
```

## Getting Started

See the `example` directory for a complete sample app using Flutter Pin Pad.
