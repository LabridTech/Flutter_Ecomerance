import 'package:flutter/material.dart';
import 'package:flutter_practice_app_1/components/available_color_component.dart';
import 'package:flutter_practice_app_1/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';

// ignore: must_be_immutable
class Productview extends StatelessWidget {
  Productview({super.key});

  int isActive = 0;

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              color: Colors.lightBlueAccent,
            ),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    margin: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0x9D9D9D9D)),
                    child: Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                      const Text(
                        'Back',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 10 / 100,
              ),
              SimpleShadow(
                offset: const Offset(0, 15),
                opacity: 1.0,
                color: const Color.fromARGB(204, 45, 45, 45),
                child: Image.asset('../assets/images/bag1.png'),
              ),
              const Availablecolor(),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10,
                    ),
                    child: Column(children: [
                      SimpleShadow(
                        offset: const Offset(0, 10),
                        opacity: 1.0,
                        color: const Color.fromARGB(204, 45, 45, 45),
                        child: const Text('Bags',
                            style: TextStyle(
                              color: producttextcolor,
                              fontSize: 25,
                              fontFamily: 'Italic',
                            )),
                      ),
                      SizedBox(
                        height: screenHeight * 1 / 100,
                      ),
                      SimpleShadow(
                        offset: const Offset(0, 10),
                        opacity: 1.0,
                        color: const Color.fromARGB(204, 45, 45, 45),
                        child: const Text('45',
                            style: TextStyle(
                              color: producttextcolor,
                              fontSize: 25,
                              fontFamily: 'Italic',
                            )),
                      ),
                    ]),
                  )
                ],
              ),
              Container(
                  height: screenHeight * 10 / 100,
                  margin: EdgeInsets.symmetric(
                    horizontal: screenWidth * 20 / 100,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 2 / 100),
                    child:
                        const Text('you can customize according to your needs.',
                            style: TextStyle(
                              color: producttextcolor,
                              fontSize: 15,
                              fontFamily: 'Italic',
                            )),
                  ))
            ]),
          ),
          Container(
            height: screenHeight * 10 / 100,
            width: screenWidth - screenWidth * 2 / 100,
            margin: EdgeInsets.all(screenHeight * 2 / 100),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.blue,
            ),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0x9D9D9D9D),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Check Out',
                                style: TextStyle(
                                  color: producttextcolor,
                                  fontSize: 15,
                                  fontFamily: 'Italic',
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
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
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ),
                                onPressed: () {},
                                color: iconcolor,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0x9D9D9D9D),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Add to cart',
                                style: TextStyle(
                                  color: producttextcolor,
                                  fontSize: 15,
                                  fontFamily: 'Italic',
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
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
                                icon: const Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                                onPressed: () {},
                                color: iconcolor,
                              ),
                            ),
                          ),
                        ],
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
