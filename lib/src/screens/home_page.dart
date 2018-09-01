import 'dart:async';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> { 

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/HomeScreen');
    Navigator.of(context).pushReplacementNamed("/LogInPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  final logo = Hero(
      tag:'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/vibe-logo-on-splash-background.png'),
      ),
    );

  // final vibeSpotLogo = DecoratedBox(
  //   decoration: BoxDecoration(
  //     image: DecorationImage(
  //       fit: BoxFit.fitWidth,
  //       image: AssetImage('assets/images/vibe-logo-on-splash-background.png'),
  //     ),
  //     shape: BoxShape.circle,
  //   ),
  // );

  final tagText = new Center(
          child: new Text("Your \n Music Career \n Starts Here.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Bold',
            fontSize: 40.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   

  final createAccountButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.deepOrange.shade300,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){

              } ,
              color: Colors.orange.shade700,
              child: Text(
                "CREATE ACCOUNT", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  ),
                  
              ),
          ),
        ),
    ); 

  final loginButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.deepOrange.shade200,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){

              } ,
              color: Colors.transparent,
              child: Text(
                "SIGN IN", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  )
              ),
          ),
        ),
    ); 

   final versionText = new Center(
          child: new Text('Vibespot 2018 v1.0',
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Light',
            fontSize: 15.0,
          )
          ),   
    );

  // final signupBtn = new BoxDecoration(
  //   image: DecorationImage(
  //     image: AssetImage('assets/images/create-account-btn.png'),
  //   ),
  // );


  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: new Stack(
  //       alignment: Alignment.center,
  //       children: <Widget>[
  //       new Container(
  //         decoration: new BoxDecoration(
  //           image: new DecorationImage(
  //             image: new AssetImage('assets/images/splash-background.png'),
  //             fit: BoxFit.fill,
  //           ),
  //         ),
  //       ),
     
  //             logo,
  //             SizedBox(height: 48.0),
  //             tagText,
  //             SizedBox(height: 30.0),
  //             createAccountButton,
  //             SizedBox(height: 5.0),
  //             loginButton,
  //             SizedBox(height: 60.0),
  //             versionText,
    
  //     ],
  //   )
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              tagText,
              SizedBox(height: 30.0),
              createAccountButton,
              SizedBox(height: 3.0),
              loginButton,
              // SizedBox(height: 5.0),
              // signupBtn,
              SizedBox(height: 60.0),
              versionText,

          ]
        ),
      ),
      
    );
  }

}