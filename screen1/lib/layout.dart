import 'package:flutter/material.dart';
import 'package:screen1/grid.dart';
import 'package:screen1/grid2.dart';
import 'package:screen1/grid3.dart';
import 'package:screen1/grid4.dart';
import 'package:screen1/grid5.dart';
import 'package:screen1/grid6.dart';
import 'package:screen1/grid7.dart';

class Layout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 1",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid();
              },));
            },
          ),
          Container(padding: EdgeInsets.all(20),),
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 2",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid2();
              },));
            },
          ),
          Container(padding: EdgeInsets.all(20),),
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 3",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid3();
              },));
            },
          ),
          Container(padding: EdgeInsets.all(20),),
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 4",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid4();
              },));
            },
          ),
          Container(padding: EdgeInsets.all(20),),
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 5",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid5();
              },));
            },
          ),
          Container(padding: EdgeInsets.all(20),),
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 6",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid6();
              },));
            },
          ),
          Container(padding: EdgeInsets.all(20),),
          InkWell(
            child: Container(
                alignment: Alignment.center,
                child: Text("Layout 7",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Grid7();
              },));
            },
          ),


        ],
      ),
    );
    throw UnimplementedError();
  }

}