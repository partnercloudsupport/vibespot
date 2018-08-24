import 'dart:async';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  
   startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

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
