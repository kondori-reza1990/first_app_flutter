import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  Color color = Colors.red;
  String text = "";

  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode1 = FocusNode();
  final TextEditingController _controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(size: 35,),
              Text("Title Demo With Row",
              style: TextStyle(fontFamily: "fontName"),)
            ],
          )
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                style: const TextStyle(fontFamily: "fontName"),
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Please Enter name'
                ),
                focusNode: _focusNode,
                autofocus: true,
                controller: _controller,
                enabled: true,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                ],
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLength: 5,
                obscureText: false,
                obscuringCharacter: "*",
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
                onSubmitted: (value) {
                  _focusNode1.nextFocus();
                },
                onEditingComplete: () {

                },
                onTap: () {

                },
                readOnly: false,
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
              ),
              TextField(
                style: const TextStyle(fontFamily: "fontName"),
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Family',
                    hintText: 'Please Enter family'
                ),
                focusNode: _focusNode1,
                autofocus: true,
                controller: _controller1,
                enabled: true,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                ],
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLength: 20,
                obscureText: false,
                obscuringCharacter: "*",
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
                onSubmitted: (value) {
                  setState(() {
                    text = _controller.text + " " + _controller1.text;
                  });
                },
                onEditingComplete: () {

                },
                onTap: () {

                },
                readOnly: false,
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
              ),
              Text(
                "Body $count, $text",
                style: TextStyle(
                    color: color,
                    fontSize: 25,
                  fontFamily: "fontName"
                ),
              ),
            ],
          ),
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
