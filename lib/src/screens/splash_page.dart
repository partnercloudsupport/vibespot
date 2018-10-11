import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static String tag = 'splash-page';
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  
   startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  

  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/HomeScreen');
    Navigator.of(context).pushReplacementNamed("/HomePage");
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
        fit: StackFit.expand,
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
    ),
    );
  }
  // Widget buildAnimation(){
  // }
}
