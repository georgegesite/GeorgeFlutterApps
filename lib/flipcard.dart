import 'package:hilocardgame/back_card.dart';
import 'package:hilocardgame/front_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:hilocardgame/cardclassSuit.dart';
import 'package:hilocardgame/systemupdates.dart';

class flipCard extends StatefulWidget {
  const flipCard({super.key});

  @override
  State<flipCard> createState() => _flipCarpState();
}

class _flipCarpState extends State<flipCard> {
  bool isFlipped = false;

  Widget first() {
    return Card(
      key: Key('second'),
      elevation: 5,
      child: back_card(),
    );
  }

  Widget second() {
    return Card(
      key: Key('second'),
      elevation: 5,
      child: front_card(),
    );
  }

  Widget transition(Widget widget, Animation<double> animation) {
    final flipAnimation = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: flipAnimation,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(isFlipped) != widget!.key);
        final value =
            isUnder ? min(flipAnimation.value, pi / 2) : flipAnimation.value;
        return Transform(
          transform: Matrix4.rotationX(value),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: AnimatedSwitcher(
                    reverseDuration: Duration(seconds: 5),
                    duration: Duration(seconds: 5),
                    switchInCurve: Curves.ease,
                    switchOutCurve: Curves.easeIn,
                    child: isFlipped ? second() : first(),
                    transitionBuilder: transition,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      child: const Text("NEXT CARD"),
                      onPressed: () async {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    system_update_wrong_button()));
                          }
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 290,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(cardfaces[0]), fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  //HIGH OPTION
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => system_update_wrong()));
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[500],
                      ),
                      child: High(),
                    ),
                  ),
                ),
                Padding(
                  //EQUAL OPTION
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => system_update_correct()));
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[800],
                      ),
                      child: Equal(),
                    ),
                  ),
                ),
                Padding(
                  //LOW OPTION
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => system_update_correct()));
                          }
                        });
                      },
                      child: Low(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment(0.2, 0.7),
              child: Container(
                child: Text(
                  "HIGH",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Equal extends StatelessWidget {
  const Equal({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  "EQUAL",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 60,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child: Text(
              "LOW",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
