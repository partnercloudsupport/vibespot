// import 'dart:async';
import 'package:flutter/material.dart';

class SignUpPage3 extends StatefulWidget {

  // static String tag = 'login-page';
  @override
 SignUpPage3State createState() => SignUpPage3State();
 
}

class SignUpPage3State extends State<SignUpPage3> {
//  int _selected = 0;

  // startTime() async {
  //   var duration = new Duration(seconds: 5);
  //   return new Timer(duration, navigationPage);
  // }
  
  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed("/MusicPage");
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // startTime();
  // }

//   void onChanged(int value) {
//   setState(() {
//     _selected = value;
//   });
// }



  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),

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


            new Center(
                  child: new Text("Artist name",
                  style: new TextStyle(
                    color: Colors.orange.shade700,
                    fontFamily: 'Poppins-Bold',
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                  ),   
                ), 
                SizedBox(height: 10.0),  

            new Center(
                    child: new Text("Please, provide your record/artist details",
                    style: new TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                    ),   
                  ), 
                  SizedBox(height: 40.0),


            new TextField(
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
              ),
              SizedBox(height: 10.0),


            new TextField(
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
              ),
              SizedBox(height: 10.0),


        new Padding(
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
            ), 
             
          ]
        ),
      ),
    );
  }
}