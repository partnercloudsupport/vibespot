import 'dart:async';
import 'package:flutter/material.dart';


 class AddCard extends StatefulWidget{
   @override
   AddCardState createState()=>  AddCardState();
 }
 
 
 class AddCardState extends State<AddCard> {
     
    startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
  
    Navigator.of(context).pushReplacementNamed("/TransferPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }



     final addCardBar = AppBar(
       centerTitle: true,
        leading: Icon(Icons.arrow_back, size: 30.0, color: Colors.orange.shade700),
        title: Text("Add Card", style: TextStyle(color:Colors.orange.shade700, 
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



  final successIcon = new Center(
    // padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new IconButton(
            icon: Icon(Icons.check_circle, color: Colors.green, size: 70.0),
            onPressed: null,
          ),   
        );  

  


     final transactionStatus = new Center(
          child: new Text("Transaction Successful",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Bold',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
          ),   
        ); 

    
  
   
   @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: addCardBar,
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              SizedBox(height: 70.0),
              successIcon,
              SizedBox(height: 50.0),
              transactionStatus,
          
          
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
          title: new Text("My Spot"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.playlist_play),
          title: new Text("Vibestream"),
        ),
         new BottomNavigationBarItem(
          //backgroundColor: Colors.black,
          icon: Icon(Icons.supervisor_account),
          title: Text("My Account")
        ),
          new BottomNavigationBarItem(
          //backgroundColor: Colors.black,
          icon: Icon(Icons.search),
          title: Text("Search")
        ),
      ],
    ),
  );
   }
 }