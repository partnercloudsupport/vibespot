import 'dart:async';
import 'package:flutter/material.dart';

class vibeMusicSplash extends StatefulWidget {
  static String tag = 'login-page';
  @override
 vibeMusicSplashState createState() => vibeMusicSplashState();
}

class vibeMusicSplashState extends State<vibeMusicSplash> {

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/SplashPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  final logoVibeMusic = Hero(
      tag:'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 60.0,
          child: Image.asset('assets/images/vibe-logo-on-black.png'),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              logoVibeMusic,
          
          ]
        ),
      ),
    );
  }
}