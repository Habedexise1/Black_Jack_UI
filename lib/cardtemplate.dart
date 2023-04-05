// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  final suit;
  final color;
  final number;
  const CardTemplate({super.key, this.suit, this.color, this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          height: 150,
          width: 100,
          child: Center(
            child: Text(""),
          ),
        ),
      ),
    );
  }
}
