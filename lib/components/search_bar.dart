import 'package:flutter/material.dart';
import 'package:flutter_practice_app_1/constants.dart';

class SearchBarcomponent extends StatelessWidget {
  const SearchBarcomponent({super.key});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 50.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Color.fromARGB(135, 173, 222, 242),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                )
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                Icons.search,
                color: iconcolor,
              ),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 11.0,
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11.0,
              ),
            ),
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
