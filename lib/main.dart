// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hilocardgame/Homepage.dart';
import 'package:hilocardgame/cardclassSuit.dart';

void main() {
  runApp(MyApp());
  addSuits();
  cardListShuffle();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}
