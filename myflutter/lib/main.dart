import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Show extends StatelessWidget {
  const Show({super.key});
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text("Hello world"), //t
      duration: Duration(seconds: 3),
    );
  }
}

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
                  Show();
                },
                child: Text("Show SnakBar"),
              ),
            )
          ],
        ),
      )));
}
