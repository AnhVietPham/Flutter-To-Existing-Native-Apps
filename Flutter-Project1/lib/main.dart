import 'package:flutter/material.dart';
import 'package:my_flutter/main.dart' as myFlutter;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
        Navigator.of(context).pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter 1"),
          automaticallyImplyLeading: true,
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(),
              child: Center(
                child: Text(
                  "Flutter View 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            RaisedButton(
              child: Text("Go To Flutter 2"),
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return HomePage();
                }));
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
