import 'package:flutter/material.dart';
import "screens/home.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VibeSPot',
      // theme: ThemeData(
      //   primarySwatch: Colors.purple),
        home: Home(),
    );
  }
}
