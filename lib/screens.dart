import 'package:flutter/material.dart';
import 'package:flutter_practice_app_1/components/add_page.dart';
import 'package:flutter_practice_app_1/components/home_page.dart';
import 'package:flutter_practice_app_1/components/login_page.dart';
import 'package:flutter_practice_app_1/components/product_page.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _Screens();
}

class _Screens extends State<Screens> {
  String screensname = 'home';

  void changescreens(String screenchangename) {
    setState(() {
      screensname = screenchangename;
    });
  }

  @override
  Widget build(context) {
    return screensname == 'login'
        ? Login()
        : screensname == 'productview'
            ? Productview()
            : screensname == 'addproduct'
                ? const Addproduct()
                : Home(viewname: screensname);
  }
}
