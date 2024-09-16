import 'package:flutter/material.dart';
import 'login_card.dart';
import 'signup_card.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  List<String> titles = <String>['Log In', 'Sign Up'];

  Login({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Login/Signup')),
              backgroundColor: Colors.lightBlue,
              bottom: TabBar(
                labelColor: const Color.fromARGB(255, 8, 8, 8),
                indicatorColor: const Color.fromARGB(255, 248, 246, 246),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2,
                indicator: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                tabs: <Widget>[
                  Tab(
                    text: titles[0],
                  ),
                  Tab(
                    text: titles[1],
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                LoginCard(),
                SignupCard(),
              ],
            )),
      ),
    );
  }
}
