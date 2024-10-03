import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.blue,
            )),
            Expanded(
                child: Container(
              color: Colors.pink,
            )),
            Expanded(
                child: Container(
              color: Colors.red,
            ))
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            Expanded(
                child: Container(
              color: Colors.purple,
            )),
            Expanded(
                child: Container(
              color: Colors.yellow,
            ))
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.red,
            )),
            Expanded(
                child: Container(
                  color: Colors.black,
                )),
            Expanded(
                child: Container(
                  color: Colors.lightGreen,
                ))
          ],
        ))
      ]),
    ));
    throw UnimplementedError();
  }
}
