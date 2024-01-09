import 'dart:math';

import 'package:flutter/material.dart';

class DiceAndButton extends StatefulWidget {
  DiceAndButton({super.key});
  @override
  State<DiceAndButton> createState() {
    return _DiceAndButtonState();
  }
}

class _DiceAndButtonState extends State<DiceAndButton> {
  var currImage = 'assets/images/dice-1.png';
  var randomize = Random();
  void changeImage() {
    int rand = randomize.nextInt(6) + 1;
    setState(() {
      currImage = 'assets/images/dice-$rand.png';
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            currImage,
            width: 130,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: changeImage,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
