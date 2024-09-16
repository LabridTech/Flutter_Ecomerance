import 'package:flutter/material.dart';
import 'package:flutter_practice_app_1/components/dynamic_component.dart';
import './categories.dart';
import './search_bar.dart';
import './product_card.dart';
import '../constants.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({required this.viewname, super.key});

  String viewname;
  double price = 0;

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String titleview = widget.viewname == 'home'
        ? 'Home'
        : widget.viewname == 'cart'
            ? 'Cart'
            : widget.viewname == 'yourproduct'
                ? 'Your Product'
                : 'Inventory';
    void changeprice(int value) {
      setState(() {
        widget.price = widget.price + value;
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            titleview,
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            widget.viewname == 'home'
                ? Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: IconButton(
                        icon: const Icon(Icons.add_shopping_cart_rounded),
                        onPressed: () {},
                        color: iconcolor,
                      ),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Stack(children: [
          widget.viewname == 'home'
              ? Positioned(
                  child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 5 / 100,
                    ),
                    const SearchBarcomponent(),
                    SizedBox(
                      height: screenHeight * 5 / 100,
                    ),
                    const Categories(),
                  ],
                ))
              : const SizedBox(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                alignment: Alignment.topCenter,
                height: screenHeight * 70 / 100,
                decoration: const BoxDecoration(
                  color: Color(0x9D9D9D9D),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: screenHeight * 2 / 100,
                          width: screenWidth * 58 / 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Topactions(
                            viewname: widget.viewname,
                            price: widget.price,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 52 / 100,
                      child: GridView.count(
                        crossAxisCount: 2,
                        scrollDirection:
                            axisDirectionToAxis(AxisDirection.down),
                        children: [
                          Productcard(
                            viewname: widget.viewname,
                            changePrice: changeprice,
                            price: 45,
                          ),
                        ],
                      ),
                    ),
                    widget.viewname != 'cart'
                        ? Container(
                            height: screenHeight * 10 / 100,
                            width: screenWidth - screenWidth * 20 / 100,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25,
                                  blurStyle: BlurStyle.inner,
                                )
                              ],
                            ),
                            child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: IconButton(
                                        icon: const Icon(Icons.home_outlined),
                                        onPressed: () {},
                                        color: iconcolor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: IconButton(
                                        icon: const Icon(
                                            Icons.chat_bubble_outline),
                                        onPressed: () {},
                                        color: iconcolor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: IconButton(
                                        icon: const Icon(Icons.person),
                                        onPressed: () {},
                                        color: iconcolor,
                                      ),
                                    ),
                                  ),
                                ]),
                          )
                        : Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: screenWidth * 30.8 / 100),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Color(0x9D9D9D9D),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: screenWidth * 4 / 100,
                                    horizontal: screenWidth * 4.5 / 100,
                                  ),
                                  child: Text('Buy it',
                                      style: TextStyle(
                                        color: producttextcolor,
                                        fontSize: screenWidth * 4 / 100,
                                        fontFamily: 'Italic',
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 4 / 100,
                                    vertical: 10,
                                  ),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14)),
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        size: screenWidth * 4 / 100,
                                      ),
                                      onPressed: () {},
                                      color: iconcolor,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
