import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
          home: SafeArea(
              child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("DemoApp"),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarms)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
        body: Column(
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("hello i am here !"),
                    duration: Duration(seconds: 3),
                  ));
                },
                child: Text("Show SnakBar"),
              ),
            )
          ],
        ),
      )));
}
