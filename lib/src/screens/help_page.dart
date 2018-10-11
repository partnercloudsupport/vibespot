import 'dart:async';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  static String tag = 'transfer-page';
  @override
 HelpPageState createState() => HelpPageState();
}

class HelpPageState extends State<HelpPage> {

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/QrPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

 final helpBar = AppBar(
       centerTitle: true,
        leading: Icon(Icons.arrow_back, size: 30.0, 
        color: Colors.orange.shade700),
        title: Text("Help", style: TextStyle(color:Colors.orange.shade700, 
        fontFamily: "Poppins", fontSize: 30.0), 
        textAlign: TextAlign.center,),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            iconSize: 30.0,
            color: Colors.orange.shade700,
            icon: Icon(Icons.perm_identity),
            onPressed: () {

            },
          ),
        ],
        // icons: Icon(Icons.add),
        backgroundColor: Colors.black,
      ); 


  final searchField = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'Enter Seacrh',
        filled: true,
        fillColor: Colors.grey,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        prefixIcon: Icon(Icons.search, color: Colors.white, size:30.0,),
      //  icon: Icon(Icons.search, color: Colors.white, size:30.0,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );

    
    final coinTransfer = new Card(
      color: Colors.grey,
      child: new Column(
       mainAxisSize: MainAxisSize.min,
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const ListTile(
            leading: const Text('Coin Transfer', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),),
            trailing: const Icon(Icons.details, color: Colors.white, size: 25.0),
            onTap: null,
          ),
        ],
      ),
    );

       final recharge = new Card(
      color: Colors.grey,
      child: new Column(
       mainAxisSize: MainAxisSize.min,
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const ListTile(
            leading: const Text('Recharge', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),),
            trailing: const Icon(Icons.details, color: Colors.white, size: 25.0),
            onTap: null,
          ),
        ],
      ),
    );

       final buySong = new Card(
      color: Colors.grey,
      child: new Column(
       mainAxisSize: MainAxisSize.min,
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const ListTile(
            leading: const Text('Buy Song', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),),
            trailing: const Icon(Icons.details, color: Colors.white, size: 25.0),
            onTap: null,
          ),
        ],
      ),
    );


  @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: helpBar,
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              SizedBox(height: 30.0),
              searchField,
              SizedBox(height: 50.0),
              coinTransfer,
              SizedBox(height: 15.0),
              recharge,
              SizedBox(height: 15.0),
              buySong,
              
              // amountField,
              // SizedBox(height: 30.0),
              // proceedButton
          
            
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