import 'package:flutter/material.dart';

class Grid7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(child: Scaffold(
     body: Row(
       children: [
         Column(
           children: [
             Expanded(
                 child: Container(
               color: Colors.grey,
             )),
             Expanded(
                 flex: 3,
                 child: Container(
               color: Colors.deepOrangeAccent,
             )),
             Expanded(
                 flex: 3,
                 child: Container(
               color: Colors.blue,
             )),
           ],
         ),
         Expanded(child: Container(
           color: Colors.redAccent,
         )),
         Expanded(child: Container(
           color: Colors.orangeAccent,
         ))
       ],
     ),
   ));
    throw UnimplementedError();
  }

}