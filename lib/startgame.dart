// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hilocardgame/flipcard.dart';

class GameProper extends StatefulWidget {
  const GameProper({Key? key}) : super(key: key);

  @override
  State<GameProper> createState() => _GameProperState();
}

class _GameProperState extends State<GameProper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[400],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "NEW GAME",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  flipCard(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 200,
                  width: 450,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
                child: Text(
              "SCORE: ",
              style: TextStyle(
                  fontSize: 30.0, fontFamily: 'BebasNeue', color: Colors.white),
            )),
          ],
        ));
  }
}
