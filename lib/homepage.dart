// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:black_jack_ui/card.dart';
import 'package:black_jack_ui/cardtemplate.dart';
import 'package:black_jack_ui/suits.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardTemplate(
                    color: Colors.red,
                    number: 10,
                    suit: clover(),
                  ),
                  CardTemplate(
                    color: Colors.red,
                    number: 10,
                    suit: clover(),
                  ),
                ],
              ),
              CardBack(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardTemplate(
                    color: Colors.red,
                    number: 10,
                    suit: clover(),
                  ),
                  CardTemplate(
                    color: Colors.red,
                    number: 10,
                    suit: clover(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
