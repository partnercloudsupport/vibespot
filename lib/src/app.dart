import 'package:flutter/material.dart';
import "./screens/vibemusic.dart";
import "./screens/splash_page.dart";
import "./screens/home_page.dart";
import "./screens/login_page.dart";
import "./screens/signup_home.dart";
import "./screens/signup_page1.dart";

class App extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
      // '/LogInPage.tag': (BuildContext context) => new LogInPage(),
      "/SplashPage": (BuildContext context) => new SplashPage(),
      "/HomePage": (BuildContext context) => new HomePage(),
       "/LogInPage": (BuildContext context) => new LogInPage(),
       "/signUpHome": (BuildContext context) => new signUpHome(),
       "/SignUpPage1": (BuildContext context) => new SignUpPage1(),
      };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VibeSPot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.black,
        fontFamily: 'Poppins',
        ),
        home: vibeMusicSplash(),
        // home: SplashPage(),
        routes: routes,
    );
  }
}
