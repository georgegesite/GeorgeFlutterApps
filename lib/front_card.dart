import 'package:flutter/material.dart';
import 'package:hilocardgame/cardclassSuit.dart';

class front_card extends StatelessWidget {
  const front_card({super.key});

  @override
  Widget build(BuildContext context) {
    cardfaces.shuffle();
    return Material(
        child: Container(
      height: 290,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black26,
        image:
            DecorationImage(image: AssetImage(cardfaces[0]), fit: BoxFit.cover),
      ),
    ));
  }
}
