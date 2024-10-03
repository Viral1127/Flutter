import 'package:flutter/material.dart';

class Prectice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
            color:Colors.red,
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                color: Colors.greenAccent,
              )),
              Expanded(child: Container(
                color: Colors.black,
              ))
            ],
          )),],
      ),
    );
    throw UnimplementedError();
  }

}