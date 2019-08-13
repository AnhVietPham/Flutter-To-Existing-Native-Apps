import 'package:flutter/material.dart';
import 'package:my_flutter/main.dart' as myFlutter;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 3"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            myFlutter.showFlutterView(context, "flutterView1");
          },
          child: Text('Go To Flutter 1'),
        ),
      ),
    );
  }
}
