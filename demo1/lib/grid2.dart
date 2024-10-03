import 'package:flutter/material.dart';
import 'dart:math';

class Grid2 extends StatelessWidget {

  Widget easy([int f=1]) {
    var r = Random().nextInt(255);
    var g = Random().nextInt(255);
    var b = Random().nextInt(255);
    return Expanded(
        flex: f,
        child: Container(
          color: Color.fromRGBO(r, g, b, 1)
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          easy(),
          Expanded(
              child: Row(
            children: [
              // Expanded(
              //     flex: 5,
              //     child: Container(
              //       color: Colors.red,
              //     )),
              easy(5),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.green,
                  ))
                ],
              ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.pink,
              )),
              Expanded(
                  child: Container(
                color: Colors.black,
              )),
              Expanded(
                  child: Container(
                color: Colors.blueGrey,
              ))
            ],
          ))
        ],
      ),
    ));
    throw UnimplementedError();
  }
}
