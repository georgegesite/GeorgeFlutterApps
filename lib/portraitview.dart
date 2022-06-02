// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hilocardgame/flipDetails.dart';
import 'package:hilocardgame/cardclassSuit.dart';
import 'package:hilocardgame/HiLOEqNeButtons.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';

class PortraitView extends StatefulWidget {
  const PortraitView({
    Key? key,
  }) : super(key: key);

  @override
  State<PortraitView> createState() => _PortraitViewState();
}

class _PortraitViewState extends State<PortraitView> {
  final ScrollController controller = ScrollController();
  int index = 0;
  int index2 = 1;
  int get imagePath => cardList[index].value;
  late FlipCardController _controller;
  int _counter = 0;

  List<String> guessedCards = [];

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red[400],
                margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                padding: EdgeInsets.all(10.0),
                child: const Text(
                  'HIGH-LOW CARD GAME',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'BebasNeue',
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          height: 200,
                          width: 140,
                          child: FlipcardMobile(
                            imagpath: cardList[index].imgpath,
                            key: ValueKey<int>(imagePath),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 15)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
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
                              imagePath: cardList[index2].imgpath,
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
                              if (cardList[index2].value >=
                                  cardList[index].value) {
                                _counter++;
                                guessedCards.add(cardList[index2].imgpath);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Colors.green,
                                    title: const Text(
                                      'CORRECT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    content: const Text(
                                      'KEEP GOING!',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    actions: <Widget>[
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            setState(() {
                                              index++;
                                              index2++;
                                              _controller.state?.controller
                                                  ?.reset();
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.green[300],
                                          ),
                                          child: const Text(
                                            'CONTINUE',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'BebasNeue',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
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
                                      textAlign: TextAlign.center,
                                    ),
                                    content: Text(
                                      'HIGHEST SCORE: $_counter',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    actions: <Widget>[
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.popUntil(context,
                                                (route) {
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
                                      ),
                                    ],
                                  ),
                                );
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.white,
                              )),
                          child: High(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _controller.state?.controller?.forward();
                              if (cardList[index2].value <
                                  cardList[index].value) {
                                _counter++;
                                guessedCards.add(cardList[index2].imgpath);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    backgroundColor: Colors.green,
                                    title: const Text(
                                      'CORRECT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    content: const Text(
                                      'KEEP GOING!',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    actions: <Widget>[
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            setState(() {
                                              index++;
                                              index2++;
                                              _controller.state?.controller
                                                  ?.reset();
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.green[300],
                                          ),
                                          child: const Text(
                                            'CONTINUE',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'BebasNeue',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
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
                                      textAlign: TextAlign.center,
                                    ),
                                    content: Text(
                                      'HIGHEST SCORE: $_counter',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SourceCode',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
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
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.white,
                              )),
                          child: Low(),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      color: Colors.red,
                      child: const Text(
                        'GUESSED CARDS LISTVIEW',
                        style: TextStyle(
                          fontFamily: 'SourceCode',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    //LIST VIEW CARDS
                    child: SingleChildScrollView(
                      child: Column(children: [
                        SizedBox(
                          height: 200,
                          width: 422,
                          child: ListView.builder(
                              itemCount: guessedCards.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                int reverseIndex =
                                    guessedCards.length - 1 - index;
                                return Container(
                                  height: 135,
                                  width: 100,
                                  margin: EdgeInsets.all(1.5),
                                  child: Center(
                                    child: Image.asset(
                                      guessedCards[reverseIndex],
                                    ),
                                  ),
                                );
                              }),
                        )
                      ]),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.red,
                          child: Text(
                            'SCORE: $_counter',
                            style: const TextStyle(
                              fontSize: 30,
                              fontFamily: 'BebasNeue',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) {
                        return route.settings.name == "/";
                      });
                      cardResetandShuffle();
                      _counter = 0;
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[400],
                    ),
                    child: const Text(
                      'QUIT',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
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
