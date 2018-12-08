import 'package:flutter/material.dart';

import "package:vibespot/src/screens/splash_page.dart";
import "package:vibespot/src/screens/home_page.dart";
import "package:vibespot/src/screens/login_page.dart";
import "package:vibespot/src/screens/signup_home.dart";
import "package:vibespot/src/screens/signup_option_page.dart";
import "package:vibespot/src/screens/signup_artist_page.dart";
import "package:vibespot/src/screens/signup_manager_page.dart";
import "package:vibespot/src/screens/signup_page3.dart";

final routes = {

      "/SplashPage": (BuildContext context) => new SplashPage(),
      "/HomePage": (BuildContext context) => new HomePage(),
      "/LogInPage": (BuildContext context) => new LogInPage(),
      "/SignUpHome": (BuildContext context) => new SignUpHome(),
      "/SignUpOption": (BuildContext context) => new SignUpOption(),
      "/SignUpArtistPage": (BuildContext context) => new SignUpArtistPage(),
      "/SignUpManagerPage": (BuildContext context) => new SignUpManagerPage(),
      "/SignUpPage3": (BuildContext context) => new SignUpPage3(),
};