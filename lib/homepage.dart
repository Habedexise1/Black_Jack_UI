// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_field, prefer_final_fields, avoid_single_cascade_in_expression_statements

import 'dart:math';

import 'package:black_jack_ui/card.dart';
import 'package:black_jack_ui/cardtemplate.dart';
import 'package:black_jack_ui/suits.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

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
                    color: Colors.black,
                    number: 10,
                    suit: clover(),
                  ),
                  CardTemplate(
                    color: Colors.red,
                    number: 9,
                    suit: heart(),
                  ),
                ],
              ),
              Transform.rotate(
                angle: pi / 2,
                child: CardBack(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardTemplate(
                    color: Colors.red,
                    number: 10,
                    suit: diamond(),
                  ),
                  CardTemplate(
                    color: Colors.black,
                    number: 8,
                    suit: spdae(),
                  ),
                  // getFlippingCard(10, diamond(), Colors.red)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getFlippingCard(int number, var suit, var color) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateY(pi * _animation.value),
      child: GestureDetector(
        onTap: () {
          if (_animationStatus == AnimationStatus.dismissed) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        },
        child: _animation.value >= 0.5
            ? CardBack()
            : CardTemplate(
                color: color,
                number: number,
                suit: suit,
              ),
      ),
    );
  }
}
