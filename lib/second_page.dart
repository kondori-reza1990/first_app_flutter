import 'package:flurry_navigation/flurry_navigation.dart';
import 'package:flutter/material.dart';

final secondscreen = Screen(contentBuilder: (BuildContext context) {
  return const Center(
    child: FittedBox(
      fit: BoxFit.contain,
      child: Text(
        "Second Page",
        style:
            TextStyle(color: Colors.amber, fontSize: 50, fontFamily: "fontName"),
      ),
    ),
  );
});
