import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class carouselwithdotspage extends StatefulWidget {
  List<String> pictureList =[    'lib/asset/noor raqi1.jpg'
  ];

  carouselwithdotspage({required this.pictureList});

  @override
  _carouselwithdotspageState createState() => _carouselwithdotspageState();
}

class _carouselwithdotspageState extends State<carouselwithdotspage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.pictureList
        .map((item) => Container(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
        Container(
        width: double.infinity,
          height: 500,
          alignment: Alignment.centerLeft,
          color: Colors.purple[800],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    'انا نور راقي، social media coordinator سابقاً ب WIE.✨ كنت اشتغل بكل حب معهم؛ التعاون والمحبة بين أعضاء الفريق  خلتنا نشتغل جميعاً بكل حماس، قدرنا ندمج بين افكارنا طبقناها بواقعنا. شكراً IEEE WIE على التجربة السفاحة. 💜'),
              ),
            ),
            Container(
              width: 500,
              height: 500,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('lib/asset/noor raqi.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        ],
        ),
      ),
    )
    )
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),

      ],
    );
  }
}
