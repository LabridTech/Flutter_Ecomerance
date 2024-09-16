import 'package:flutter/material.dart';

class Availablecolor extends StatefulWidget {
  const Availablecolor({super.key});

  @override
  State<Availablecolor> createState() => _Availablecolor();
}

class _Availablecolor extends State<Availablecolor> {
  int isActive = 0;
  @override
  Widget build(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isActive = 1;
            });
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.black,
                border: Border.all(
                    width: 2,
                    color: isActive == 1 ? Colors.white : Colors.transparent)),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isActive = 2;
            });
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.red,
                border: Border.all(
                    width: 2,
                    color: isActive == 2 ? Colors.white : Colors.transparent)),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isActive = 3;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.grey,
                border: Border.all(
                    width: 2,
                    color: isActive == 3 ? Colors.white : Colors.transparent)),
          ),
        ),
      ],
    );
  }
}
