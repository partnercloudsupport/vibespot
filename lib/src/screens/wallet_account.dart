import 'dart:async';
import 'package:flutter/material.dart';


 class WalletAccount extends StatefulWidget{
   @override
   WalletAccountState createState()=>  WalletAccountState();
 }
 
 
 class WalletAccountState extends State<WalletAccount> {
     
    startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
  
    Navigator.of(context).pushReplacementNamed("/AddCard");
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



  final walletHead = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Text("Wallet",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );   


  final walletTag = new Padding(
    padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new Text("Your account",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );  

  final nextButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(0.0),
          shadowColor: Colors.orange.shade200,
          elevation: 2.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 200.0,
              onPressed: (){
              } ,
              color: Colors.brown.shade400,
              child: Text(
                "Balance: Naira 1000", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  ),
              ),
          ),
        ),
    ); 



    //  final walletTagStatus = new Center(
    //       child: new Text("Empty.",
    //       style: new TextStyle(
    //         color: Colors.white,
    //         fontFamily: 'Poppins-Bold',
    //         fontSize: 30.0,
    //       ),
    //       textAlign: TextAlign.center,
    //       ),   
    //     ); 

    //      final walletTagSub = new Center(
    //       child: new Text("No transactions has been made yet.",
    //       style: new TextStyle(
    //         color: Colors.white,
    //         fontFamily: 'Poppins-Light',
    //         fontSize: 15.0,
    //       ),
    //       textAlign: TextAlign.center,
    //       ),   
    //     ); 
   
  
   
   @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: signInBar,
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              SizedBox(height: 30.0),
              walletHead,
              SizedBox(height: 15.0),
              walletTag,
              SizedBox(height: 40.0),
              nextButton
            
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