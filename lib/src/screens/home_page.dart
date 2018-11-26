// import 'dart:async';
import 'package:flutter/material.dart';
import "./login_page.dart";

class HomePage extends StatefulWidget {
  // static String tag = 'home-page';
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> { 

  // startTime() async {
  //   var duration = new Duration(seconds: 5);
  //   return new Timer(duration, navigationPage);
  // }
  
  // void navigationPage() {
  //   // Navigator.of(context).pushReplacementNamed('/HomeScreen');
  //   Navigator.of(context).pushReplacementNamed("/LogInPage");
  // }

  // String _url = getNewCatUrl();

  // static String getNewCatUrl() {
  //   return 'http://thecatapi.com/api/images/get?format=src&type=jpg&size=small'
  //          '#${new DateTime.now().millisecondsSinceEpoch}';
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // startTime();
  // }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/splash-background.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                     shrinkWrap: true,
                    children: <Widget>[
                      SizedBox(height: 80.0),


                      new CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 42.0,
                          child: Image.asset('assets/images/vibe-logo-on-splash-background.png'),
                      ),
                      SizedBox(height: 40.0),


                      new Text("Your \n Music Career \n Starts Here.",
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins-Bold',
                          fontSize: 40.0,
                        ),
                        textAlign: TextAlign.center,
                        ),   
                      SizedBox(height: 30.0),


                      GestureDetector(
                          onTap: (){

                                  setState(() {
                                  // _url = getNewCatUrl();
                                  Navigator.of(context).pushNamed('/SignUpHome');
                                  //  Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => SignUpHome()),
                                  // );
                                });
                          },
                          
                            child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 42.0,
                                child: Image.asset('assets/images/create-account-btn.png'),
                            ),
                      
                        ),
                      SizedBox(height: 10.0),

                      GestureDetector(
                            onTap: (){
                              setState(() {
                                  
                                  Navigator.of(context).pushNamed('/LogInPage');
                                  
                                    });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 42.0,
                              child: Image.asset('assets/images/signin-btn.png'),
                          ),
                        ),
                      SizedBox(height: 50.0),

                      Center(
                        child: new Text('Vibespot 2018 v1.0',
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                            )
                            ),
                      ),   
                    ],
                
                ),
              ),

          ],

        ),
      ],
    )
    );
  }
}
