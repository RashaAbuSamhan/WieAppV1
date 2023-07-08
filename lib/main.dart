import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/HomePage.dart';
import 'package:pro/signUp.dart';
import 'package:pro/signin.dart';
import 'package:pro/under_construction.dart';
void main() {
  runApp(wie_aplication());
}

class wie_aplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IEEE BAU WIE",
      initialRoute: 'signUp',
      routes: {
        'HomePage': (context) => HomePage(),
        'under_construction': (context) => under_construction(),
        'signin': (context) => signin(),
        'signUp': (context) => signUp(),
      },


    );
  }
}