import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qualifier_quiz_app_iitm/home.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Text(
          "Qua-Quiz",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: "Satisfy",
          ),
        ),
      ),
    );
  }
}
