import 'package:flutter/material.dart';
import 'add_card.dart';

// ignore: must_be_immutable
class Addproduct extends StatelessWidget {
  const Addproduct({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Add Product',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.lightBlue,
          shape: const ContinuousRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(100))),
        ),
        body: AddproductCard(),
      ),
    );
  }
}
