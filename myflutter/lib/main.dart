import 'package:flutter/material.dart';

void main() => runApp(const DemoApp());

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hello world',
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
              title: Text(
                "Corn Hub",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.menu),
              backgroundColor: Color.fromARGB(255, 218, 200, 0),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notification_add))
              ]),
          body: Center(
            child: Image.asset(
              'assests/images/download.png',
              width: 360,
              height: 360,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: "floating button",
            elevation: 2,
            foregroundColor: Color.fromARGB(255, 0, 0, 0),
            backgroundColor: Color.fromARGB(255, 255, 213, 0),
            child: Icon(Icons.navigation_sharp),
          ),
          backgroundColor: const Color.fromARGB(255, 57, 57, 57),
        )));
  }
}
