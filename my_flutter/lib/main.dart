import 'package:flutter/material.dart';
import 'package:flutter_project1/main.dart' as flutter_project1;
import 'package:flutter_project2/main.dart' as flutter_project2;
import 'package:flutter_project3/main.dart' as flutter_project3;
import 'dart:ui';

void main() => runApp(chooseWidget(window.defaultRouteName));

Widget chooseWidget(String route) {
  switch (route) {
    case 'flutter1':
      return flutter_project1.MyApp();
      break;
    case 'flutter2':
      return flutter_project2.MyApp();
      break;
    case 'flutter3':
      return flutter_project3.MyApp();
      break;
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
