import 'package:flutter/material.dart';
import 'package:my_flutter/main.dart' as myFlutter;


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 1"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            myFlutter.showFlutterView(context, "flutterView2");
          },
          child: Text('Go To Flutter 2'),
        ),
      ),
    );
  }
}
