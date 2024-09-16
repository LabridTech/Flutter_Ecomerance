import 'package:flutter/material.dart';
import 'package:flutter_practice_app_1/components/check_box.dart';
import 'package:simple_shadow/simple_shadow.dart';

// ignore: must_be_immutable
class Productcard extends StatelessWidget {
  Productcard(
      {super.key,
      required this.viewname,
      required this.changePrice,
      required this.price});

  String viewname;
  final void Function(int) changePrice;
  int price;

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          child: Container(
            clipBehavior: Clip.none,
            margin: const EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                border: Border(right: BorderSide(width: 9, color: Colors.red))),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                        top: 5,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 5 / 100,
                            height: screenHeight * 5 / 100,
                          ),
                          viewname != 'yourproduct'
                              ? const Text("45")
                              : const Text('Bought'),
                          SizedBox(
                            width: screenWidth * 5 / 100,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  SimpleShadow(
                    offset: const Offset(0, 10),
                    opacity: 1.0,
                    color: const Color.fromARGB(204, 45, 45, 45),
                    child: Image.asset('../assets/images/bag1.png'),
                  ),
                  const Text(
                    'Hazle Free Backpack',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  viewname == 'cart' || viewname == 'inventory'
                      ? CheckboxExample(
                          changePrice: changePrice,
                          price: price,
                        )
                      : const SizedBox()
                ],
              )),
        ),
      ],
    );
  }
}
