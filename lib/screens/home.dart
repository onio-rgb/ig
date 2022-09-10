import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ig/widgets/startup_card.dart';

import '../services/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () {},
          ),
          elevation: 0,
          backgroundColor: Color(0xff2bc9b3),
          actions: [
            Container(
              height: 30,
              width: 100,
              child: CarouselSlider(
                  items: [
                    Text("Incubate", style: actionStyle),
                    Text("Ideate", style: actionStyle),
                    Text("Innovate", style: actionStyle)
                  ],
                  options: CarouselOptions(
                      autoPlayInterval: Duration(seconds: 1),
                      autoPlay: true,
                      height: 30,
                      scrollDirection: Axis.vertical)),
            )
          ]),
      body: ListView(
        children: [
          StartupCard(
            img: "assets/images/skylark.png",
            detail:
                "Skylark Labs develops continuously evolving and customizable threat detection systems for enhanced physical security. Clients (CCTV or Drone companies) can customize proprietary AI solutions at the time of deployment or continuously evolve them if needed after deployment making them preferable to other comparable market solutions.",
            titletext: "SKYLARK LABS",
          ),
          StartupCard(
              img: "assets/images/cusmat.png",
              detail:
                  "Skylark Labs develops continuously evolving and customizable threat detection systems for enhanced physical security. Clients (CCTV or Drone companies) can customize proprietary AI solutions at the time of deployment or continuously evolve them if needed after deployment making them preferable to other comparable market solutions.",
              titletext: "CUSMAT")
        ],
      ),
    );
  }
}
