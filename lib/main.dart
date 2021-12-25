import 'package:flutter/material.dart';
import 'package:qualifier_quiz_app_iitm/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "IITM_Qualifier_Quiz",
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: splashscreen());
  }
}
