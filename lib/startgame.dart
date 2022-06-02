// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hilocardgame/landscapeview.dart';
import 'package:hilocardgame/portraitview.dart';

class GameProper extends StatefulWidget {
  const GameProper({Key? key}) : super(key: key);

  @override
  State<GameProper> createState() => _GameProperState();
}

class _GameProperState extends State<GameProper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Container(
                // here place portrait
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/homescreen.jpg"),
                      fit: BoxFit.cover),
                ),
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                    decoration:
                        new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          child: PortraitView(),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                // here place landscape
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/homescreen.jpg"),
                      fit: BoxFit.cover),
                ),
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                    decoration:
                        new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    alignment: Alignment.center,
                    child: Column(
                      // here place portrait or landscape
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          child: LandscapeView(),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
  }
}
