import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/splash.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    )
    );
  }

  // Widget buildAnimation(){

  // }
}
