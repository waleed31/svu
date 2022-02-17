import 'package:flutter/material.dart';

import 'package:test_1/notes/Notes.dart';
import 'package:test_1/calculatorfolder/calculator.dart';
import 'package:test_1/pages/drawer.dart';
import 'package:test_1/pages/email.dart';
import 'package:test_1/pages/home.dart';
import 'package:test_1/pages/info.dart';
import 'package:test_1/pages/links.dart';
import 'package:test_1/pages/qustions.dart';
import 'calculatorfolder/calculator.dart';
import 'calculatorfolder/calculatoreng.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SVU",
      home: Home(),
      routes: {
        'calculator': (context) {
          return Calculator();
        },
        'home': (context) {
          return Home();
        },
        'eng': (context) {
          return CalculatorEng();
        },
        'qustions': (context) {
          return Qustions();
        },
        'email': (context) {
          return MyEmail();
        },
        'notespage': (context) {
          return NotesPage();
        },
        'drawer': (context) {
          return MyDrawer();
        },
        'info': (context) {
          return Info();
        },
        'links': (context) {
          return Links();
        },
      },
    );
  }
}
