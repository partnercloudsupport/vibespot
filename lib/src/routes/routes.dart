import 'package:flutter/material.dart';

import "../screens/splash_page.dart";
import "../screens/home_page.dart";
import "../screens/login_page.dart";
import "../screens/signup_home.dart";
import "../screens/signup_page1.dart";
import "../screens/signup_page2.dart";
import "../screens/signup_page3.dart";

final routes = {

      "/SplashPage": (BuildContext context) => new SplashPage(),
      "/HomePage": (BuildContext context) => new HomePage(),
      "/LogInPage": (BuildContext context) => new LogInPage(),
      "/SignUpHome": (BuildContext context) => new SignUpHome(),
      "/SignUpPage1": (BuildContext context) => new SignUpPage1(),
      "/SignUpPage2": (BuildContext context) => new SignUpPage2(),
      "/SignUpPage3": (BuildContext context) => new SignUpPage3(),
};