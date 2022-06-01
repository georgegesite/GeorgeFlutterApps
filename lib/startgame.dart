// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hilocardgame/flipcard.dart';
import 'package:hilocardgame/cardclassSuit.dart';

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
        body: Container(
          child: flipCard(),
        ));
  }
}
