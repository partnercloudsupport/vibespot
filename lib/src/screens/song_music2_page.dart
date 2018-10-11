import 'dart:async';
import 'package:flutter/material.dart';


 class SongMusic2 extends StatefulWidget{
   SongMusic2State createState()=>  SongMusic2State();
 }
 
 
 class SongMusic2State extends State<SongMusic2> {

    startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
  
    Navigator.of(context).pushReplacementNamed("/InstructionPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


     final signInBar = AppBar(
       centerTitle: true,
        leading: Icon(Icons.person_add, size: 30.0, color: Colors.orange.shade700),
        title: Text("Music", style: TextStyle(color:Colors.orange.shade700, 
        fontFamily: "Poppins", fontSize: 30.0), 
        textAlign: TextAlign.center,),
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
        // icons: Icon(Icons.add),
        backgroundColor: Colors.black,
      );



  final songHead = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Text("Songs",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );   


  final dataTag = new Padding(
    padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new Text("Data",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );  

  
   final noDataImage =  CircleAvatar(
          backgroundColor: Colors.black,
          radius: 60.0,
          child: Image.asset('assets/images/no-data-image.png',),
      );
    

    // final noDataImage =  DecoratedBox(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage('assets/images/no-data-image.png')
    //     ),
    //   ) ,
      
    // );


     final tagTextSong = new Center(
          child: new Text("No Data yet.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Bold',
            fontSize: 40.0,
          ),
          textAlign: TextAlign.center,
          ),   
        ); 

         final tagTextSongSub = new Center(
          child: new Text("Connect to a wifi or turn on your mobile data \n for internet connection.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
          ),   
        ); 
   
   @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: signInBar,
      backgroundColor: Colors.black26,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              songHead,
              SizedBox(height: 20.0),
              dataTag,
              SizedBox(height: 40.0),
              noDataImage,
              SizedBox(height: 8.0),
              tagTextSong,
              SizedBox(height: 8.0),
              tagTextSongSub,
            
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