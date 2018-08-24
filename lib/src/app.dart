import 'package:flutter/material.dart';
import "./screens/home.dart";
import "./screens/homescreen.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VibeSPot',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.purple),
        home: Home(),
        routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
    );
  }
}
