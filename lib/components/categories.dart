import 'package:flutter/material.dart';


import '../constants.dart';


// Our Category List need StateFullWidget


// I can use Provider on it, Then we dont need StatefulWidget


class Categories extends StatefulWidget {

  const Categories({super.key});


  @override

  State<Categories> createState() => _CategoriesState();

}


class _CategoriesState extends State<Categories> {

  List<String> categories = [

    "All",

    "Bags",

    "Clothes",

    "Pants",

    "Shirts",

  ];


  // By default first one is selected


  int selectedIndex = 0;


  @override

  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;


    double screenHeight = MediaQuery.of(context).size.height;


    Orientation orientation = MediaQuery.of(context).orientation;


    // On iPhone 10 the defaultSize = 10 almost


    // So if the screen size increase or decrease then our defaultSize also vary


    double defaultSize = orientation == Orientation.landscape

        ? screenHeight * 24 / 1000

        : screenWidth * 24 / 1000;


    return Padding(

      padding: EdgeInsets.symmetric(vertical: defaultSize * 2),

      child: SizedBox(

        height: defaultSize * 3.5, // 35


        child: ListView.builder(

          scrollDirection: Axis.horizontal,

          itemCount: categories.length,

          itemBuilder: (context, index) => buildCategoriItem(index),

        ),

      ),

    );

  }


  Widget buildCategoriItem(int index) {

    double screenWidth = MediaQuery.of(context).size.width;


    double screenHeight = MediaQuery.of(context).size.height;


    Orientation orientation = MediaQuery.of(context).orientation;


    // On iPhone 10 the defaultSize = 10 almost


    // So if the screen size increase or decrease then our defaultSize also vary


    double defaultSize = orientation == Orientation.landscape

        ? screenHeight * 24 / 1000

        : screenWidth * 24 / 1000;


    return GestureDetector(

      onTap: () {

        setState(() {

          selectedIndex = index;

        });

      },

      child: Container(

        alignment: Alignment.center,

        margin: EdgeInsets.only(left: defaultSize * 2),

        padding: EdgeInsets.symmetric(

          horizontal: defaultSize * 2, //20


          vertical: defaultSize * 0.5, //5

        ),

        decoration: BoxDecoration(

            color: selectedIndex == index

                ? const Color(0xFFEFF3EE)

                : Colors.transparent,

            borderRadius: BorderRadius.circular(

              defaultSize * 1.6, // 16

            )),

        child: Text(

          categories[index],

          style: TextStyle(

            color: selectedIndex == index ? kPrimaryColor : kTextColor,

          ),

        ),

      ),

    );

  }

}

