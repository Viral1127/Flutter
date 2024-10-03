import 'package:flutter/material.dart';
import 'dart:math';

class Grid4 extends StatelessWidget {
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
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Column(
                children: [
                  easy(),
                  easy(),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  easy(),
                  Expanded(
                      child: Row(
                    children: [easy(), easy(), easy()],
                  ))
                ],
              )),
              Expanded(
                  child: Column(
                children: [easy(), easy(), easy()],
              ))
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [easy(), easy(), easy()],
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [easy(), easy(3), easy()],
                      )),
                  easy(),
                  easy(2)
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [easy(4), easy(1), easy(2)],
                  )),
                  Expanded(
                      child: Row(
                    children: [easy(), easy(), easy()],
                  )),
                ],
              ))
            ],
          ))
        ],
      ),
    ));
    throw UnimplementedError();
  }
}
