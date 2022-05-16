import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'HIGH-LOW CARD GAME',
          style: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Text(
        'WELCOME TO THE GAME',
        style: TextStyle(
          letterSpacing: 2.0,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'SourceCode',
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('START'),
        backgroundColor: Colors.green,
      ),
    ));
  }
}
