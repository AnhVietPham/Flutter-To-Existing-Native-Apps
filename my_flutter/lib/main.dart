import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(chooseWidget(window.defaultRouteName));

Widget chooseWidget(String route) {
  switch (route) {
    case 'r1':
      return MyFlutterView();
    default:
      return Center(
        child: Text("Unknow Route"),
      );
  }
}

class MyFlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.red,
        shape: RoundedRectangleBorder(),
        child: Center(
          child: Text(
            "My Flutter View",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
