import 'dart:js_interop';

import 'package:flutter/material.dart';

class Prelogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const() ;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            fit: StackFit.expand,
            children: [Image.asset(
              'assets/images/Wallpaper.jpg',
              fit: BoxFit.cover,
            ),

              Container(color:Colors. black38),
              Container(
                padding: EdgeInsets.all(29),
                  child: InkWell(
                    onTap: () {
                      print('Text  is clicked');
                    },
                      child : Text(
                        'VC : happy new year',
                        style: TextStyle(color: Colors.lightGreen , fontWeight:FontWeight.bold , fontSize: 25 )
                      )
                  )

              )
            ]
          ),
        ],
      )
    );
    throw UnimplementedError();
  }

}