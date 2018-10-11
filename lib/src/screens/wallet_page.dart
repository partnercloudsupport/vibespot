import 'dart:async';
import 'package:flutter/material.dart';


 class WalletPage extends StatefulWidget{
   WalletPageState createState()=>  WalletPageState();
 }
 
 
 class WalletPageState extends State<WalletPage> {
     
     startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
  
    Navigator.of(context).pushReplacementNamed("/DrawerBar");
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


     final walletTagStatus = new Center(
          child: new Text("Empty.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
          ),   
        ); 

         final walletTagSub = new Center(
          child: new Text("No transactions has been made yet.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Light',
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
          ),   
        ); 
   
  
   
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
              noDataImage,
              SizedBox(height: 8.0),
              walletTagStatus,
              SizedBox(height: 8.0),
              walletTagSub,
              // password,
            
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