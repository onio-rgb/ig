import 'package:flutter/material.dart';
import 'package:ig/services/styles.dart';

class StartupCard extends StatelessWidget {
  final String img;
  final String detail;
  final String titletext;
  const StartupCard(
      {super.key,
      required this.img,
      required this.detail,
      required this.titletext});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(width: 2)),
                        child: Image.asset(img),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(flex: 5, child: Text(titletext, style: title)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Container(
                  child: Text(
                    detail,
                    style: normalTextCard,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 284),
                IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: Icon(Icons.navigate_next_rounded)),
              ],
            )
          ]),
          width: MediaQuery.of(context).size.width,
          height: 350,
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(70),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          side: BorderSide(color: Colors.black, width: 2)),
    );
  }
}
