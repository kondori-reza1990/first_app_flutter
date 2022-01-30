import 'package:flurry_navigation/flurry_navigation.dart';
import 'package:flutter/material.dart';

final fourthscreen = Screen(contentBuilder: (BuildContext context) {
  return const Center(
    child: FittedBox(
      fit: BoxFit.contain,
      child: Text(
        "Fourth Page",
        style:
        TextStyle(color: Colors.green, fontSize: 50, fontFamily: "fontName"),
      ),
    ),
  );
});
