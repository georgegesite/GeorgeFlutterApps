// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'dart:ui';

import 'package:flutter/material.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/homescreen.jpg"), fit: BoxFit.cover),
        ),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(5),
                    child: const Text(
                      'HOW TO PLAY',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      color: Colors.red[300],
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          'Press HIGH if you guess that the next card is greater than or equal to the current card.\nPress LOW if you guess that the next card is less than the current card.\nAce = 1, Jack = 11, Queen = 12, King = 13\nGuessing right earns you a point, otherwise, it is GAME OVER for you.  GAIN POINTS TO BECOME TOP 1. Enjoy!',
                          style: TextStyle(
                              fontFamily: 'SourceCode',
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: const Text('RETURN'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
