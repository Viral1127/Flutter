import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/product.dart';
import 'package:screen1/screen3.dart';

class Screeen2 extends StatefulWidget {
  Product? product;

  @override
  State<Screeen2> createState() => _Screeen2State();
}

class _Screeen2State extends State<Screeen2> {
  // Product product;
  // Product product;
  // _Screeen2State({required this.product});
  int value = 1;
  int price = 500;

  void increment(){
    setState(() {
      value++;
    });
  }

  void decrement(){
    setState(() {
      value--;
      if(value<0){
        value = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Expanded(
            child: Container(
          color: Color.fromRGBO(62, 130, 175, 1),
          // color: product.color,
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 560,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text("Colour"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(62, 130, 175, 1),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromRGBO(62, 130, 175, 1),
                                        )),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        shape: BoxShape.circle),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.systemYellow,
                                        shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 80),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Size"),
                            Text("12 cm",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                              "Veniam eligendi nulla voluptas corporis consectetur"
                              " deleniti adipisci earum! Saepe cum beatae quisquam delectus tempora obcaecati perferendis alias numquam earum, accusamus quos."),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: FloatingActionButton(
                                  child: Icon(CupertinoIcons.minus),
                                  backgroundColor: Colors.white,
                                  onPressed: decrement),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                            ),
                            Text("$value"),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: FloatingActionButton(
                                  child: Icon(CupertinoIcons.plus),
                                  backgroundColor: Colors.white,
                                  onPressed: increment),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Icon(
                            CupertinoIcons.heart_circle_fill,
                            color: Colors.pink,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: FloatingActionButton(
                              child: Icon(
                                CupertinoIcons.cart,
                              ),
                              backgroundColor: Colors.white,
                              onPressed: () => {}),
                        ),
                        Container(
                          width: 300,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Screen3();
                                },
                              ));
                            },
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color.fromRGBO(62, 130, 175, 1),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SvgPicture.asset("assets/icons/back.svg",height: 20, width: 30,),
                  InkWell(
                    onTap: () => {Navigator.pop(context)},
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 10)),
                      // Image.asset("assets/icons/cart.png",height: 30, width: 30,),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Office Code",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Office bag",
                          // product.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Price : ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "\$${price}",
                        // product.price,
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                  Container(
                    child: Image.asset("assets/images/bag_1.png",height: 335,width: 200,),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
    throw UnimplementedError();
  }
}
