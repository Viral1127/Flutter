import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:screen1/product.dart';
import 'package:screen1/screen2.dart';
import 'package:screen1/screen3.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  static final List<Product> handbags = Product.getAllHandbags();
  static final List<Product> wallets = Product.getAllWallets();
  static final List<List<Product>> products = [
    handbags,
    wallets,
    handbags,
    wallets
  ];
  List<String> menu = ["Handbag", "Wallet", "Footwears", "Belt"];

  int currentIndex = 0;

  Widget _productBlock(Product product) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Screeen2(),
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 200,
            child: Container(
              height: 4000,
              child: Card(
                  color: product.color,
                  child: Image.asset(
                    product.img,
                    height: 10,
                    width: 200,
                  )),
            ),
          ),
          Expanded(
              flex: 25,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(product.name),
              )),
          Expanded(
              flex: 25,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(product.price,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
              ))
        ],
      ),
    );
    // return
  }

  Widget _prductShow() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 12,
      mainAxisSpacing: 30,
      children: List.generate(
          products[currentIndex].length,
          (index) => Container(
                child: _productBlock(products[currentIndex][index]),
              )),
    );
  }

  Widget _menu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          menu.length,
          (index) => InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Text(
                  menu[index],
                  style: TextStyle(
                      color:
                          (index == currentIndex) ? Colors.black : Colors.grey,
                      fontWeight: FontWeight.bold,fontSize: 18),
                ),
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SvgPicture.asset("assets/icons/back.svg",height: 20, width: 30,),
                InkWell(
                  child: Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                Row(
                  children: [
                    Icon(Icons.search),
                    Container(padding: EdgeInsets.symmetric(horizontal: 10)),
                    // Image.asset("assets/icons/cart.png",height: 30, width: 30,),
                    Icon(Icons.shopping_cart)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Women",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _menu(),
          ),
          // Expanded(
          //   child: Container(
          //     child: ListView(
          //       children: [
          //         // Container(padding:EdgeInsets.all(10)),
          //         Padding(
          //           padding: const EdgeInsets.only(bottom: 10),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   InkWell(
          //                     onTap: () {
          //                       Navigator.push(context, MaterialPageRoute(
          //                         builder: (context) {
          //                           var product;
          //                           return Screeen2(product: product);
          //                         },
          //                       ));
          //                     },
          //                     child: Container(
          //                       width: 180,
          //                       height: 200,
          //                       decoration: BoxDecoration(
          //                           color: Color.fromRGBO(62, 130, 175, 1),
          //                           borderRadius: BorderRadius.circular(15)),
          //                       child: Padding(
          //                           padding: const EdgeInsets.all(10),
          //                           child: Column(
          //                             children: [
          //                               Container(
          //                                 child: Image.asset(
          //                                     "assets/images/bag_1.png"),
          //                               )
          //                             ],
          //                           )),
          //                     ),
          //                   ),
          //                   Text("Office Code"),
          //                   Text("\$500")
          //                 ],
          //               ),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Container(
          //                     width: 180,
          //                     height: 200,
          //                     decoration: BoxDecoration(
          //                         color: Colors.brown,
          //                         borderRadius: BorderRadius.circular(15)),
          //                     child: Padding(
          //                         padding: const EdgeInsets.all(10),
          //                         child: Column(
          //                           children: [
          //                             Container(
          //                               child: Image.asset(
          //                                   "assets/images/bag_2.png"),
          //                             )
          //                           ],
          //                         )),
          //                   ),
          //                   Text("Belt Bag"),
          //                   Text("\$234")
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(bottom: 10),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Container(
          //                     width: 180,
          //                     height: 200,
          //                     decoration: BoxDecoration(
          //                         color: Colors.black54,
          //                         borderRadius: BorderRadius.circular(15)),
          //                     child: Padding(
          //                         padding: const EdgeInsets.all(10),
          //                         child: Column(
          //                           children: [
          //                             Container(
          //                               child: Image.asset(
          //                                   "assets/images/bag_3.png"),
          //                             )
          //                           ],
          //                         )),
          //                   ),
          //                   Text("Hang top"),
          //                   Text("\$500")
          //                 ],
          //               ),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Container(
          //                     width: 180,
          //                     height: 200,
          //                     decoration: BoxDecoration(
          //                         color: Colors.amber,
          //                         borderRadius: BorderRadius.circular(15)),
          //                     child: Padding(
          //                         padding: const EdgeInsets.all(10),
          //                         child: Column(
          //                           children: [
          //                             Container(
          //                               child: Image.asset(
          //                                   "assets/images/bag_4.png"),
          //                             )
          //                           ],
          //                         )),
          //                   ),
          //                   Text("Old Fashion"),
          //                   Text("\$500")
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(bottom: 10),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Container(
          //                     width: 180,
          //                     height: 200,
          //                     decoration: BoxDecoration(
          //                         color: Colors.pinkAccent,
          //                         borderRadius: BorderRadius.circular(15)),
          //                     child: Padding(
          //                         padding: const EdgeInsets.all(10),
          //                         child: Column(
          //                           children: [
          //                             Container(
          //                               child: Image.asset(
          //                                   "assets/images/bag_5.png"),
          //                             )
          //                           ],
          //                         )),
          //                   ),
          //                   Text("Pinki purse"),
          //                   Text("\$500")
          //                 ],
          //               ),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Container(
          //                     width: 180,
          //                     height: 200,
          //                     decoration: BoxDecoration(
          //                         color: Colors.black54,
          //                         borderRadius: BorderRadius.circular(15)),
          //                     child: Padding(
          //                         padding: const EdgeInsets.all(10),
          //                         child: Column(
          //                           children: [
          //                             Container(
          //                               child: Image.asset(
          //                                   "assets/images/bag_6.png"),
          //                             )
          //                           ],
          //                         )),
          //                   ),
          //                   Text("trandy bag"),
          //                   Text("\$500")
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          Expanded(child: _prductShow()),
        ],
      ))),
    );
    throw UnimplementedError();
  }
}
