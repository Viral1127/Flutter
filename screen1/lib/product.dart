import 'dart:ui';

import 'package:flutter/material.dart';

class Product{
  String img;
  Color color;
  String name;
  String price;

  Product({
    required this.img,
    required this.color,
    required this.name,
    required this.price
  });

  static List<Product> getAllHandbags(){
    List<Product> handbags = [];
    handbags.add(Product(img: "assets/images/bag_1.png", color: Color.fromRGBO(62, 130, 175, 1), name: "Office bag", price: "\$500"));
    handbags.add(Product(img: "assets/images/bag_2.png", color: Colors.brown, name: "Belt bag", price: "\$234"));
    handbags.add(Product(img: "assets/images/bag_3.png", color: Colors.black54, name: "Hand bag", price: "\$450"));
    handbags.add(Product(img: "assets/images/bag_4.png", color: Colors.amber, name: "Old fashion", price: "\$200"));
    handbags.add(Product(img: "assets/images/bag_5.png", color: Colors.pinkAccent, name: "Pinky bag", price: "\$800"));
    handbags.add(Product(img: "assets/images/bag_6.png", color: Colors.black54, name: "Trandy bag", price: "\$600"));
    handbags.add(Product(img: "assets/images/bag_2.png", color: Colors.black54, name: "New Arrival", price: "\$499"));
    handbags.add(Product(img: "assets/images/bag_4.png", color: Colors.brown, name: "Old Is gold", price: "\$399"));
    return handbags;
  }

  static List<Product> getAllWallets(){
    List<Product> wallets = [];
    wallets.add(Product(img: "assets/images/bag_2.png", color: Colors.orange, name: "Wallet bag", price: "\$600"));
    wallets.add(Product(img: "assets/images/bag_6.png", color: Colors.black54, name: "New Arrival", price: "\$499"));
    return wallets;
  }
}