import 'dart:async';
import 'package:flutter/material.dart';

class SignUpPage3 extends StatefulWidget {

  static String tag = 'login-page';
  @override
 SignUpPage3State createState() => SignUpPage3State();
 
}

class SignUpPage3State extends State<SignUpPage3> {
//  int _selected = 0;

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/MusicPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

//   void onChanged(int value) {
//   setState(() {
//     _selected = value;
//   });
// }

  final artistnameTag = new Center(
          child: new Text("Artist name",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   

  final welcomeTag = new Center(
          child: new Text("Please, provide your record/artist details",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );  


  final recordLabel = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Record label',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

  

  final artistName = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Artist name',
        filled: true,
        fillColor: Colors.black,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      
      ),
    );



  final nextButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.orange.shade200,
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
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    ); 


  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        title: Text("Create acount", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              artistnameTag,
              SizedBox(height: 10.0),
              welcomeTag,
              SizedBox(height: 40.0),
              recordLabel,
              SizedBox(height: 10.0),
              artistName,
              SizedBox(height: 10.0),
              // checkButton,
              // SizedBox(height: 15.0),
              nextButton,

          ]
        ),
      ),
    );
  }
}