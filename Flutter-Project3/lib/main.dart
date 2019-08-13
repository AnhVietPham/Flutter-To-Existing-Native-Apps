import 'package:flutter/material.dart';
import 'package:my_flutter/main.dart' as myFlutter;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button presses!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(),
              child: Center(
                child: Text(
                  "Flutter View 3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            RaisedButton(
              child: Text("Go To Flutter 1"),
              textColor: Colors.white,
              onPressed: () {
                myFlutter.showFlutterView(context, "flutterView1");
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}