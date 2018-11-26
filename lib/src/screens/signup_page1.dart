// import 'dart:async';
import 'package:flutter/material.dart';

class SignUpPage1 extends StatefulWidget {
  // static String tag = 'login-page';
  @override
 SignUpPage1State createState() => SignUpPage1State();
}

class SignUpPage1State extends State<SignUpPage1> {

  // startTime() async {
  //   var duration = new Duration(seconds: 5);
  //   return new Timer(duration, navigationPage);
  // }
  
  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed("/SignUpPage2");
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // startTime();
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading:  IconButton(
                  icon: new Icon(Icons.arrow_back, color: Colors.orange.shade700),
                        onPressed: () { 
                          
                          Navigator.pop(context);
                        
                           },
                    ),
        
        title: Text("Create acount", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[

              Center(
                  child: new Text("Welcome",
                  style: new TextStyle(
                    color: Colors.orange.shade700,
                    fontFamily: 'Poppins-Bold',
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                  ),   
                ),   
              SizedBox(height: 10.0),

            Center(
                child: new Text("Please tell us your email address",
                style: new TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
                ),   
              ),  
              SizedBox(height: 20.0),


              TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    // initialValue: 'john@gmail.com',
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
              SizedBox(height: 15.0),

              // checkBtn,
              // checkButtonText,
              SizedBox(height: 15.0),

              Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(30.0),
                        // shadowColor: Colors.orange.shade200,
                        // elevation: 5.0,
                        child: MaterialButton(
                            minWidth: 200.0,
                            height: 60.0,
                            onPressed: (){
                                  setState(() {
                                  // _url = getNewCatUrl();
                                  
                                  Navigator.of(context).pushNamed('/SignUpPage2');
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => LogInPage()),
                                  // );
                                    });

                            } ,
                            color: Colors.orange.shade700,
                            child: Text(
                              "Next", 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23.0,
                                ),
                            ),
                        ),
                      ),
                  ), 

          ]
        ),
      ),
    );
  }
}