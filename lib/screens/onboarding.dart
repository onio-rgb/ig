import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:entry/entry.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:concentric_transition/concentric_transition.dart';
import 'package:ig/screens/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final normalText = GoogleFonts.notoSerifGeorgian(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w100,
  );
  TextStyle buttonText = GoogleFonts.archivoBlack(
    color: Colors.white,
    fontSize: 26,
    fontWeight: FontWeight.w300,
  );
  TextStyle secHead = GoogleFonts.archivoBlack(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w800,
  );
  TextStyle colSecHead = GoogleFonts.archivoBlack(
    color: Color(0xff2bc9b3),
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );
  TextStyle priHead = GoogleFonts.archivoBlack(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.w800,
      shadows: <Shadow>[
        Shadow(color: Color(0xff2bc9b3), offset: Offset(5, 0))
      ]);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/app_back2.jpg',
          fit: BoxFit.fill,
        ),
      ),
      CarouselSlider(
        options: CarouselOptions(
          disableCenter: false,
          viewportFraction: 0.9,
          enableInfiniteScroll: false,
          height: 900,
          aspectRatio: 1.2,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: false,
        ),
        items: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "IDEATE",
                    style: priHead,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "INNOVATE",
                    style: priHead,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "INCUBATE",
                    style: priHead,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(120, 50, 20, 0),
                  child: Image.asset(
                    'assets/images/first.png',
                    fit: BoxFit.fill,
                    width: 500,
                    height: 500,
                  )),
            )
          ]),
          Stack(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 250, 130, 0),
                  child: Transform.rotate(
                    angle: math.pi / 12,
                    child: Image.asset(
                      'assets/images/second.png',
                      width: 400,
                      height: 320,
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "AI, ML, ROBOTICS,",
                    style: secHead,
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "HACKING, DESIGN, ",
                    style: secHead,
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "ETC.",
                    style: secHead,
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "YOU NAME IT",
                    style: secHead,
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "WE HAVE AN",
                    style: secHead,
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "EVENT",
                    style: colSecHead,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ]),
          Stack(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 200, 10, 0),
                  child: Image.asset(
                    'assets/images/third.png',
                    width: 450,
                    height: 250,
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "WE HAVE A VAST",
                    style: secHead,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "COLLECTION OF",
                    style: secHead,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "CONTENT",
                    style: colSecHead,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    side: MaterialStateProperty.all(
                        BorderSide(width: 2, color: Color(0xff2bc9b3))),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(20),
                    shadowColor: MaterialStateProperty.all(Color(0xff2bc9b3))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "EXPLORE NOW",
                    style: buttonText,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    ]);
  }
}
