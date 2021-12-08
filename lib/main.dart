import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Body $count",
              style: TextStyle(color: color, fontSize: 18),
            ),
            Text("My Flutter Project..."),
            Text("Hello World"),
            FlutterLogo(size: 300,)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
              color = Color(Random().nextInt(
                  0xffffffff)); //Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
            });
          },
        ),
      ),
    );
  }
}
