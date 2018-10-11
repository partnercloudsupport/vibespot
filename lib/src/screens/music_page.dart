import 'dart:async';
import 'package:flutter/material.dart';


 class MusicPage extends StatefulWidget{
   MusicPageState createState()=>  MusicPageState();
 }
 
 
 class MusicPageState extends State<MusicPage> {
     
     startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
  
    Navigator.of(context).pushReplacementNamed("/SongMusic2");
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



  final musicHead = new Padding(
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


  final musicTag = new Padding(
    padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: new Text("Uploded",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.left,
          ),   
        );  


  // final btmNavBar = BottomNavigationBar(
  //   // fixedColor: Colors.black,
  
  //     // items: <BottomNavigationBarItem>[
        
  //     type: BottomNavigationBarType.fixed,
  //     currentIndex: 0,
  //     items:[
  //       BottomNavigationBarItem(
  //         // backgroundColor: Colors.black,
  //         icon: Icon(Icons.music_note, color: Colors.deepOrange.shade800, size: 30.0,),
  //         title: Text("Music", style: TextStyle(color: Colors.deepOrange.shade800,),)
  //       ),
  //        BottomNavigationBarItem(
  //         // backgroundColor: Colors.black,
  //         icon: Icon(Icons.person, color: Colors.deepOrange.shade800, size: 30.0,),
  //         title: Text("Data", style: TextStyle(color: Colors.deepOrange.shade800,),)
  //       ),
  //        BottomNavigationBarItem(
  //         // backgroundColor: Colors.black,
  //         icon: Icon(Icons.account_balance_wallet, color: Colors.deepOrange.shade800,size: 30.0,),
  //         title: Text("Wallet", style: TextStyle(color: Colors.deepOrange.shade800,),)
  //       ),
  //   ],

  //   );


  //   
 
  final songList = Column(
    children: <Widget>[
      ListTile(
     leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/vibespot-appicon2x.png'),
      ),

      title: Text("Ololufe", 
      style: TextStyle(fontSize: 18.0, color: Colors.white),),

      subtitle: Text("Wande cole", 
      style: TextStyle(fontSize: 15.0, color: Colors.white),),

      trailing: Text("4.32",
      style: TextStyle(fontSize: 15.0, color: Colors.white),),
    ),
    Divider(color: Colors.white),
    ],
  );
  


  //   final songHome = Scaffold(
  //         body: ListView.builder(
  //           itemCount: 0,
  //           itemBuilder: (context, int index){
  //                 return ListTile(
  //                     leading: CircleAvatar(
  //                     ),

  //                     title:  Text("Ololufe",
  //                               style: TextStyle(
  //                                 fontSize: 18.0, 
  //                                 color: Colors.white),
  //                               ),
  //                           subtitle: Text(
  //                             "Wande Cole",
  //                             style: TextStyle(
  //                                 fontSize: 12.0, color: Colors.white),
  //                           ),

  //                 );
  //           },
  //         ),
  // );


   
   @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: signInBar,
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              musicHead,
              SizedBox(height: 20.0),
              musicTag,
              SizedBox(height: 40.0),
              songList,
              // SizedBox(height: 8.0),
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