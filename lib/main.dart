import 'dart:ffi';
import 'dart:math';
import 'dart:ui';

import 'package:first_app/fourth_page.dart';
import 'package:first_app/second_page.dart';
import 'package:first_app/third_page.dart';
import 'package:flurry_navigation/flurry_menu.dart';
import 'package:flurry_navigation/flurry_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import 'bottom_section.dart';
import 'first_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var activeScreen = firstscreen;
  Widget build(BuildContext context) {
    return FlurryNavigation(
      curveRadius: (MediaQuery.of(context).size.width *MediaQuery.of(context).size.height)/4980,
      expandIcon: Image.asset("assets/icon.png"),
      iconSize: ((MediaQuery.of(context).size.width * MediaQuery.of(context).size.height)/15420),
      contentScreen: activeScreen,
      menuScreen: FlurryMenu(
        bgColor: const Color.fromRGBO(121, 134, 203, 1),
        bottomSection: BottomSection(),
        menu: SideMenu(
          items: [
            SideMenuItem(
                id:'p1',
                icon:'assets/one.png',
                isSelected: true,
                selectedBtnColor: const Color.fromRGBO(38, 198, 218, 1),
                btnShape: BoxShape.rectangle),
            SideMenuItem(
                id: 'p2',
                icon: 'assets/two.png',
                isSelected: false,
                selectedBtnColor: const Color.fromRGBO(38, 198, 218, 1),
                btnShape: BoxShape.rectangle),
            SideMenuItem(
              id:'p3',
              icon:'assets/three.png',
              isSelected: false,
              selectedBtnColor: const Color.fromRGBO(38, 198, 218, 1),
            ),
            SideMenuItem(
              id:'p4',
              icon:'assets/four.png',
              isSelected:false,
              selectedBtnColor:const Color.fromRGBO(38, 198, 218, 1),
            ),
          ],
        ),
        onMenuItemSelected: (String? itemId) {
          if (itemId == 'p1') {
            setState(() => activeScreen = firstscreen);
          } else if (itemId == 'p2') {
            setState(() => activeScreen = secondscreen);
          } else if (itemId == 'p3') {
            setState(() => activeScreen = thirdscreen);
          } else if (itemId == 'p4') {
            setState(() => activeScreen = fourthscreen);
          }
        },
      ),
    );
  }
}
