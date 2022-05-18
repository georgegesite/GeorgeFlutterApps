// ignore: file_names
// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hilocardgame/howtoplay.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/homescreen.jpg"),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.red[400],
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'HIGH-LOW CARD GAME',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'BebasNeue',
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Image.asset('assets/homepage.png'),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: RaisedButton(
                        color: Colors.red[300],
                        child: Text(
                          'START GAME',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: RaisedButton(
                        color: Colors.red[300],
                        child: Text(
                          'VIEW SCORES',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: RaisedButton(
                        color: Colors.red[300],
                        child: Text(
                          'HOW TO PLAY',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HowToPlay()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/homescreen.jpg"),
                        fit: BoxFit.cover)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.red[400],
                          margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'HIGH-LOW CARD GAME',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontFamily: 'BebasNeue',
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/homepage.png',
                          height: 250.0,
                          width: 250.0,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: RaisedButton(
                            color: Colors.red[300],
                            child: Text(
                              'START GAME',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: RaisedButton(
                            color: Colors.red[300],
                            child: Text(
                              'VIEW SCORES',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: RaisedButton(
                            color: Colors.red[300],
                            child: Text(
                              'HOW TO PLAY',
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HowToPlay()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ));
  }
}
