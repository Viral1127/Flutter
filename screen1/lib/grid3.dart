
import 'package:flutter/material.dart';
import 'dart:math';

class Grid3 extends StatelessWidget {
  Widget easy([int f = 1]) {
    var r = Random().nextInt(255);
    var g = Random().nextInt(255);
    var b = Random().nextInt(255);
    return Expanded(
        flex: f, child: Container(color: Color.fromRGBO(r, g, b, 1)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Expanded(
            child: Row(
              children: [
                easy(4),
                Expanded(child: Column(
                  children: [
                    easy(),
                    easy()
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    easy(),
                    easy()
                  ],
                )),
              ],
            )),
        Expanded(child: Row(
          children: [
            easy(),
            Expanded(child: Row(
              children: [
                Expanded(child: Column(
                  children: [
                    easy(),
                    easy(2),
                    easy(),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    easy(3),
                    easy(),
                    easy(3)
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    easy(),
                    easy(2),
                    easy(),
                  ],
                )),
              ],
            )),
            easy()
          ],
        )),
        Expanded(child: Row(
          children: [
            easy(),
            easy(),
            easy()
          ],
        ))
      ],
    )));
    throw UnimplementedError();
  }
}
