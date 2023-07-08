import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class under_construction extends StatefulWidget {
  const under_construction({Key? key}) : super(key: key);

  @override
  State<under_construction> createState() => _under_constructionState();
}

class _under_constructionState extends State<under_construction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 450,
                width: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/asset/under construction woman.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),Container(
                height: 200,
                width: 800,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/asset/under construction box.png'),
                      fit: BoxFit.fill,
                    )),
              ),
            ],


          ),
        ),
      ),
    );
  }
}
