import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> { 
  final logo = Hero(
      tag:'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/vibe-logo-on-splash-background.png'),
      ),
    );

 final tagText = new Center(
          child: new Text('Your Music Career Starts Here',
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Bold',
            fontSize: 40.0,
          )
          ),   
        );   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/splash-background.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),


        // new Center(
        //   child: new Text('Your Music Career Starts Here',
        //   style: new TextStyle(
        //     color: Colors.white,
        //     fontFamily: 'Poppins-Bold',
        //     fontSize: 40.0,
        //   )
        //   ),   
        // )   

      // new Center(
      //     child: new Text('Your Music Career Starts Here',
      //     style: new TextStyle(
      //       color: Colors.white,
      //       fontFamily: 'Poppins-Bold',
      //       fontSize: 40.0,
      //     )
      //     ),   
      //   )   

      ],
    )
    );
  }

  // Widget buildAnimation(){

  // }
}


 Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      home: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Card(
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Container(
                        child: new Image.asset(
                          'images/lake.jpg',
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      new Container(
                        child: new Text('long information text'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }