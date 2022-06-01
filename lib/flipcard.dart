import 'package:flutter/material.dart';
import 'package:hilocardgame/flipDetails.dart';
import 'package:hilocardgame/cardclassSuit.dart';

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';

class flipCard extends StatefulWidget {
  const flipCard({
    Key? key,
  }) : super(key: key);

  @override
  State<flipCard> createState() => _flipCardState();
}

class _flipCardState extends State<flipCard> {
  final ScrollController controller = ScrollController();
  int index = 0;
  int index2 = 1;
  int get imagePath => cardList[index].value;
  late FlipCardController _controller;

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(top: 5)),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          color: Colors.white,
                          height: 200,
                          width: 140,
                          child: FlipcardMobile(
                            imagpath: cardList[index2].imgpath,
                            key: ValueKey<int>(imagePath),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          // NEXT BUTTON
                          onPressed: () {
                            setState(() {
                              index++;
                              index2++;
                              _controller.state?.controller?.reset();
                              if ((index > 52) && (index2 > 52)) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Congratulations!!'),
                                    content: const Text(
                                        'You guessed all the cards..Press OK to revert back to home page'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.popUntil(context, (route) {
                                            return route.settings.name == "/";
                                          });
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            });
                          },
                          child: Next(),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          color: Colors.white,
                          height: 200,
                          width: 140,
                          child: FlipCard(
                            speed: 500,
                            controller: _controller,
                            flipOnTouch: false,
                            front: Image.asset(
                              'assets/backcard2.png',
                              fit: BoxFit.fill,
                            ),
                            back: FlipCardDetailsMobile(
                              imagePath: cardList[index].imgpath,
                              key: ValueKey<int>(imagePath),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        //high
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (cardList[index].value >
                                  cardList[index2].value) {
                                _counter++;
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Colors.red,
                                    title: const Text(
                                      'GAME OVER',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    content: Text(
                                      'HIGHEST SCORE: $_counter',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.popUntil(context, (route) {
                                            return route.settings.name == "/";
                                          });
                                          cardResetandShuffle();
                                          _counter = 0;
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red[300],
                                        ),
                                        child: const Text(
                                          'RETURN HOME',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'BebasNeue',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[500],
                          ),
                          child: High(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (cardList[index].value ==
                                  cardList[index2].value) {
                                _counter++;
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Colors.red,
                                    title: const Text(
                                      'GAME OVER',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    content: Text(
                                      'HIGHEST SCORE: $_counter',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.popUntil(context, (route) {
                                            return route.settings.name == "/";
                                          });
                                          cardResetandShuffle();
                                          _counter = 0;
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red[300],
                                        ),
                                        child: const Text(
                                          'RETURN HOME',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'BebasNeue',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Equal(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (cardList[index].value <
                                  cardList[index2].value) {
                                _counter++;
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Colors.red,
                                    title: const Text(
                                      'GAME OVER',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    content: Text(
                                      'HIGHEST SCORE: $_counter',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.popUntil(context, (route) {
                                            return route.settings.name == "/";
                                          });
                                          cardResetandShuffle();
                                          _counter = 0;
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red[300],
                                        ),
                                        child: const Text(
                                          'RETURN HOME',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'BebasNeue',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                          ),
                          child: Low(),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      color: Colors.grey[400],
                      height: 200,
                      width: 390,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: ((BuildContext context, int index) {
                                return Row(
                                  children: <Widget>[
                                    const Padding(padding: EdgeInsets.all(1.0)),
                                    Image.network(
                                      store[index],
                                      height: 124,
                                      width: 75,
                                    ),
                                  ],
                                );
                              }),
                              itemCount: store.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 50)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'SCORE: $_counter',
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 5)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// HIGH LOW EQUAL
class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
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

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child: Text(
              "NEXT",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
