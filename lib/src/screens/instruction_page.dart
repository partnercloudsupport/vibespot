import 'dart:async';
import 'package:flutter/material.dart';

class InstructionPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
 InstructionPageState createState() => InstructionPageState();
}

class InstructionPageState extends State<InstructionPage> {

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/ReleasePage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  final instructionHead1 = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Text("Let’s do this",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 25.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   

  final instructionSubHead1 = new Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new Text(
            "Before you begin, make sure you have \n your assets prepared and available on \n  Dropbox or iCloud.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 13.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );  

   final instructionHead2 = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Text("Cover art requirements:",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );   

  final instructionSubHead2 = new Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new Text(
            "Min 3000 x 3000px, max 6000 x 6000px, \n not blurry or pixelated. No social \n handles, no logos.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 13.0,
          ),
          textAlign: TextAlign.left,
          ),   
        ); 

       final instructionHead3 = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Text("Music/audio file requirements:",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );   

  final instructionSubHead3 = new Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new Text(
            ".wav-file, sample rate at 44100 hz, stereo \n and 6 bit.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 13.0,
          ),
          textAlign: TextAlign.left,
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
                "GOT IT", 
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
        //centerTitle: true,
        //leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        title: Text("Close", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            iconSize: 30.0,
            color: Colors.orange.shade700,
            icon: Icon(Icons.add),
            onPressed: () {

            },
          ),
        ],

      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              instructionHead1,
              SizedBox(height: 10.0),
              instructionSubHead1,
              SizedBox(height: 20.0),
              instructionHead2,
              SizedBox(height: 10.0),
              instructionSubHead2,
              SizedBox(height: 20.0),
              instructionHead3,
              SizedBox(height: 10.0),
              instructionSubHead3,
              SizedBox(height: 20.0),
              nextButton,

          ]
        ),
      ),
      bottomNavigationBar: new BtnNavBarTab(),
    );
  }
}

class BtnNavBarTab extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.black,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.deepOrange.shade700,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(
              caption: new TextStyle(
                color: Colors.deepOrange.shade700, fontSize: 20.0),
                ),
                ), // sets the inactive color of the `BottomNavigationBar`
    child: new BottomNavigationBar(
      iconSize: 30.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.music_note),
          title: new Text("Music"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: new Text("Data"),
        ),
         BottomNavigationBarItem(
          //backgroundColor: Colors.black,
          icon: Icon(Icons.account_balance_wallet),
          title: Text("Wallet")
        ),
      ],
    ),
  );
   }
 }