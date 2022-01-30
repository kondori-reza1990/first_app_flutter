/*
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int count = 0;
  Color color = Colors.red;
  String text = "";

  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode1 = FocusNode();
  final TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(
                  size: 35,
                ),
                Text(
                  "Title Demo With Row",
                  style: TextStyle(fontFamily: "fontName"),
                )
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "My Demo Application",
                  style: TextStyle(
                      color: color, fontSize: 50, fontFamily: "fontName"),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              TextField(
                style: const TextStyle(fontFamily: "fontName"),
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Please Enter name'),
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
                onEditingComplete: () {},
                onTap: () {},
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
                    hintText: 'Please Enter family'),
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
                onEditingComplete: () {},
                onTap: () {},
                readOnly: false,
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
              ),
              Text(
                "Body $count, $text",
                style: TextStyle(
                    color: color, fontSize: 25, fontFamily: "fontName"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Lottie.asset("assets/color.json"),
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
*/

import 'package:flurry_navigation/flurry_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final firstscreen = Screen(contentBuilder: (BuildContext context) {
  return Center(
    child: Container(
      //color: Colors.cyan,
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)),
        color: Colors.cyan
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(30),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          "First Page",
          style:
          TextStyle(color: Colors.red, fontSize: 50, fontFamily: "fontName"),
        ),
      ),
    ),
  );
});
