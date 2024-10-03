import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$450",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                Container(
                  width: 230,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Screen3();
                        },
                      ));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    backgroundColor: Color.fromRGBO(62, 130, 175, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(241, 242, 244, 1),
        child: ListView(children: [
          Column(
            children: [
              Container(

                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => {Navigator.pop(context)},
                        child: Icon(Icons.arrow_back)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    Text(
                      "Order Summary",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          CupertinoIcons.check_mark_circled,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.circle,color: Colors.blueAccent,),
                        Text(
                          "Order Summary",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          CupertinoIcons.circle,
                          color: Colors.grey,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Deliver to:",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          InkWell(
                            child: Container(
                              width: 100,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                              child: Text(
                                "Change",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Viral Chauhan",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Text(
                        "Block no 2, Ravi tenamnet , behind yash complex,ramdevpir chowk,150 feet ring road,rajkot 360007",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "8780177560",
                            style: TextStyle(fontSize: 17),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/bag_1.png",
                          height: 100,
                          width: 100,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aristrocrafting Bag",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Blue",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 18,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(padding: EdgeInsets.only(left: 10, top: 8)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 80,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                              child: Text(
                                "Qty : 1",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 35),
                          ),
                          Text(
                            "\$500",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5),
                          ),
                          Text(
                            "\$450",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.only(left: 10, top: 15)),
                    Row(
                      children: [
                        Text(
                          "Delivery by Tomorrow , Mon",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text("|"),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text(
                          "Free Delivery",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.file_copy,
                            color: Colors.grey,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Text(
                            "Invoice",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Text(
                        "Add Email",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.blueAccent),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.square,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      Text(
                        "Use GST Invoice",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Price Details",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price (1 item)",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                        Text(
                          "\$500",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                        Text(
                          "- \$50",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Charges",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                        Text(
                          "Free Delivery",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey,
                              width: 1)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text("\$450",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
    throw UnimplementedError();
  }
}
