import 'package:flutter/material.dart';
import 'package:flutter_project1/main.dart' as flutter_project1;
import 'package:flutter_project2/main.dart' as flutter_project2;
import 'package:flutter_project3/main.dart' as flutter_project3;
import 'package:flutter_core/flutter_core.dart';
import 'dart:ui';
import 'dart:async';
import 'retart_widget.dart';

Future<void> main() async {
  runApp(MaterialApp(
    theme: new ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.deepOrange,
      accentColor: Colors.deepPurple,
      buttonColor: Colors.deepPurple,
      fontFamily: 'RobotoMono',
    ),
    home: RestartWidget(
      child: Router(),
    ),
  ));
}

class Router extends StatefulWidget {
  Router();

  @override
  State<StatefulWidget> createState() {
    return _RouterState();
  }
}

Widget getWidget() {
  String router = window.defaultRouteName;
  switch (router) {
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
      return MaterialApp();
  }
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return getWidget();
  }
}

void showFlutterView(BuildContext context, String initRouteName) {
  switch (initRouteName) {
    case 'flutterView1':
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return flutter_project1.MyApp();
      }));
      break;
    case 'flutterView2':
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return flutter_project2.MyApp();
      }));
      break;
    case 'flutterView3':
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return flutter_project3.MyApp();
      }));
      break;
  }
}
