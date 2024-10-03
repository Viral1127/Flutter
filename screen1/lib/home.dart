import 'package:flutter/material.dart';
import 'package:screen1/screen1.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                child: Text("Screen",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),)),
          ],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Screen1();
          },));
        },
      ),
    );
    throw UnimplementedError();
  }

}