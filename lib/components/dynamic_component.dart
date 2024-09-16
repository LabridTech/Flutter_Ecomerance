import 'package:flutter/material.dart';
import 'package:flutter_practice_app_1/constants.dart';

// ignore: must_be_immutable
class Topactions extends StatelessWidget {
  Topactions({super.key, required this.viewname, required this.price});

  String viewname;
  double price;

  @override
  Widget build(context) {
    return viewname == 'cart'
        ? Text('Total Price : ' '$price')
        : viewname == 'inventory'
            ? Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                          Icons.add,
                          size: topactioniconsize,
                        ),
                        onPressed: () {},
                        color: iconcolor,
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
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
                          Icons.delete_outline,
                          size: topactioniconsize,
                        ),
                        onPressed: () {},
                        color: iconcolor,
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
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
                          Icons.settings,
                          size: topactioniconsize,
                        ),
                        onPressed: () {},
                        color: iconcolor,
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox();
  }
}
