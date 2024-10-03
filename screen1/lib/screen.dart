

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/home.dart';
import 'package:screen1/layout.dart';
import 'package:screen1/screen1.dart';
import 'package:screen1/screen2.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<Screen> {
  List<Widget> pages= [Home(),Layout()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Container(
          alignment: Alignment.center,
          child: Text("Welcome Friends",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.blueGrey),)),),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(null), label: "Screen",),
          BottomNavigationBarItem(icon: Icon(null), label: "Layouts",),
        ],

        selectedItemColor: Colors.amber,
        selectedFontSize: 20,
        currentIndex: currentIndex,

        onTap: (index){
          setState(() {
            currentIndex = index;

          });
        },
      ),
    );
  }
}

