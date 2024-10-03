import 'package:demo1/grid.dart';
import 'package:demo1/grid2.dart';
import 'package:demo1/grid3.dart';
import 'package:demo1/grid4.dart';
import 'package:demo1/grid5.dart';
import 'package:demo1/grid6.dart';
import 'package:demo1/grid7.dart';
import 'package:demo1/prectice.dart';
import 'package:demo1/prelogin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: Prelogin(),
    );
  }
}

