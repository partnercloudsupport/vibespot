import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LogInPage extends StatefulWidget {
  // static String tag = 'login-page';
  @override
 LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {

  // startTime() async {
  //   var duration = new Duration(seconds: 5);
  //   return new Timer(duration, navigationPage);
  // }
  
  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed("/signUpHome");
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // startTime();
  // }

 final TextEditingController _emailController = new TextEditingController();
 final TextEditingController _passwordController = new TextEditingController();
 String _dashboard = " ";


 void _showDashboard(){
   setState((){
     if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){

        _dashboard = _emailController.text;
     }
     else {

            _dashboard = "Nothing";
     }

   });
 }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: signInBar,
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        leading:  IconButton(
                  icon: new Icon(Icons.arrow_back, color: Colors.orange.shade700),
                        onPressed: () { 
                          
                          Navigator.pop(context);
                        
                           },
                    ),
        title: Text("Sign In", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),


      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              SizedBox(height: 30.0),

              new Center(
                  child: new Text("Welcome Back",
                  style: new TextStyle(
                    color: Colors.orange.shade700,
                    fontFamily: 'Poppins-Bold',
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                  ),   
                ),   
              SizedBox(height: 40.0),

              new TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    
                    // initialValue: 'john@gmail.com',
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
              SizedBox(height: 15.0),

             
              new TextField(
                  // keyboardType: TextInputType.emailAddress,
                  controller: _passwordController,
                  autofocus: false,
                  // initialValue: 'john@gmail.com',
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ), 
              SizedBox(height: 15.0),

             new Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(80.0),
                        // shadowColor: Colors.orange.shade200,
                        // elevation: 5.0,
                        child: MaterialButton(
                            minWidth: 200.0,
                            height: 60.0,
                            onPressed: _showDashboard,
                            color: Colors.orange.shade700,
                            child: Text(
                              "Login In", 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                ),
                            ),
                        ),
                      ),
                  ), 
              SizedBox(height: 15.0),

              new FlatButton(
                child: Text('Forget password?', style: TextStyle(color:Colors.white),
                ),
                onPressed: (){

                },
              ),
              SizedBox(height: 15.0),

              new Center(
                    child: new Text("Or",
                    style: new TextStyle(
                      color: Colors.orange.shade700,
                      fontFamily: 'Poppins-Bold',
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                    ),   
                  ),   
              SizedBox(height: 15.0),

             new GestureDetector(
                            onTap: (){
                              setState(() {
                                  // _url = getNewCatUrl();
                                  
                                  Navigator.of(context).pushNamed('/LogInPage');
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => LogInPage()),
                                  // );
                                    });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 42.0,
                              child: Image.asset('assets/images/facebook-btn.png'),
                          ),
                        ),
              SizedBox(height: 10.0),

         
             new GestureDetector(
                            onTap: (){
                              setState(() {
                                  // _url = getNewCatUrl();
                                  
                                  Navigator.of(context).pushNamed('/LogInPage');
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => LogInPage()),
                                  // );
                                    });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 42.0,
                              child: Image.asset('assets/images/google-btn.png'),
                          ),
                        ),
          ]
        ),
      ),
    );
  }
}