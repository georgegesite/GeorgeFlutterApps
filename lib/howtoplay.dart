// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/greentable.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'HOW TO PLAY',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              //step 1
              '  1. YOU WILL BE GIVEN 1 FRONT FACING CARD AND 1 BACK FACING CARD.  ',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              //step 2
              '  2. YOU WILL HAVE TO GUESS IF THE BACK FACING CARD IS GREATER, LESSER, OR EQUAL TO THE FRONT FACING CARD.',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              //step 3
              '  3. ACES ARE CONSIDERED TO HAVE A VALUE OF 1, JACK = 11, QUEEN = 12, AND KING = 13. ',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              //step 4
              '  4. IF YOU GUESSED CORRECTLY, YOU WILL GAIN POINTS. IF YOU GUESSED WRONG, THE GAME ENDS AND YOUR TOTAL POINTS WILL BE RECORDED.',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              //step 5
              '  5. GAIN POINTS TO BECOME TOP 1',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[500],
                  ),
                  child: const Text('RETURN'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
