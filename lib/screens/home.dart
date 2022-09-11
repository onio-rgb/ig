import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: secondary,
        elevation: 10,
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "INNOVATION GARAGE",
                    textAlign: TextAlign.center,
                    style: drawerTitle,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/images/nitw.png")),
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/images/ig_text.png")),
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/images/ig_logo.png")),
                    ],
                  ),
                ),
              ],
            )),
            ListTile(
              title: Text(
                "Home",
                style: drawerContent,
              ),
              trailing:
                  Icon(size: 25, color: Colors.white, Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                "Projects",
                style: drawerContent,
              ),
              trailing:
                  Icon(size: 25, color: Colors.white, Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                "Start Ups",
                style: drawerContent,
              ),
              trailing:
                  Icon(size: 25, color: Colors.white, Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                "Events",
                style: drawerContent,
              ),
              trailing:
                  Icon(size: 25, color: Colors.white, Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                "Forms",
                style: drawerContent,
              ),
              trailing:
                  Icon(size: 25, color: Colors.white, Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                "Podcasts",
                style: drawerContent,
              ),
              trailing:
                  Icon(size: 25, color: Colors.white, Icons.navigate_next),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color(0xffFCDD4F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 40,
                  height: 40,
                  child: Center(
                      child: FaIcon(size: 30, FontAwesomeIcons.facebook)),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color(0xffFCDD4F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 40,
                  height: 40,
                  child:
                      Center(child: FaIcon(size: 30, FontAwesomeIcons.twitter)),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color(0xffFCDD4F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 40,
                  height: 40,
                  child: Center(
                      child: FaIcon(size: 30, FontAwesomeIcons.instagram)),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color(0xffFCDD4F),
                      borderRadius: BorderRadius.circular(10)),
                  width: 40,
                  height: 40,
                  child:
                      Center(child: FaIcon(size: 30, FontAwesomeIcons.youtube)),
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: secondary,
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              icon: FaIcon(FontAwesomeIcons.bars),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          elevation: 0,
          backgroundColor: Color(0xff2bc9b3),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("assets/images/bulb-anim.gif")),
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
              titletext: "CUSMAT"),
          StartupCard(
              img: "assets/images/gbit.png",
              detail:
                  "GBit Studios consists of a group of individuals who share a common passion and love for making games. We design and develop games from scratch for the various niches of the gaming world, learning and growing together in the process.",
              titletext: "GBIT STUDIOS"),
          StartupCard(
              img: "assets/images/flow.png",
              detail:
                  "To make process intensification and flow chemistry, available, applicable and affordable for chemical industries and create a greener impact over Indian Chemical Industry",
              titletext: "FLOWHREX TECHNOLOGIES"),
          StartupCard(
              img: "assets/images/arch.jpg",
              detail:
                  "ArchPhillic is a Virtual Reality Company which provides Virtual Reality and other immersive solutions to visualize and customize their Pre-constructed properties.",
              titletext: "ARCHPHILLIC")
        ],
      ),
    );
  }
}
