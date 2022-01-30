import 'package:flurry_navigation/flurry_navigation.dart';
import 'package:flutter/material.dart';

final thirdscreen = Screen(contentBuilder: (BuildContext context) {
  return const Center(
    child: FittedBox(
      fit: BoxFit.contain,
      child: Text(
        "Third Page",
        style:
            TextStyle(color: Colors.blue, fontSize: 50, fontFamily: "fontName"),
      ),
    ),
  );
});
