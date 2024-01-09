import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/dice_and_button.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 139, 43, 241),
              Color.fromARGB(255, 97, 54, 239),
              Colors.deepPurple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: DiceAndButton(),
      ),
    ),
  ));
}
