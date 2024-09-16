import 'package:flutter/material.dart';


import 'package:flutter_practice_app_1/screens.dart';


void main() {

  runApp(const MyApp());

}


class MyApp extends StatefulWidget {

  const MyApp({super.key});


  @override

  State<MyApp> createState() => _MyApp();

}


class _MyApp extends State<MyApp> {

  // This widget is the root of your application.


  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter App!!',

      theme: ThemeData(

        colorSchemeSeed: Colors.indigo,

        useMaterial3: true,

        brightness: Brightness.light,

      ),

      darkTheme: ThemeData(

        colorSchemeSeed: Colors.blue,

        useMaterial3: true,

        brightness: Brightness.dark,

      ),

      home: const Screens(),

      debugShowCheckedModeBanner: false,

    );

  }

}

