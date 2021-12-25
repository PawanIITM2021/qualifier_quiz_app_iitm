import 'dart:html';

import 'package:flutter/material.dart';
import 'package:qualifier_quiz_app_iitm/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Quizstar",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: splashscreen());
  }
}
