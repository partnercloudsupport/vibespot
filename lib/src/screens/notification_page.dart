import 'dart:async';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static String tag = 'transfer-page';
  @override
 NotificationPageState createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {

      startTime() async {
        var duration = new Duration(seconds: 5);
        return new Timer(duration, navigationPage);
      }
      
      void navigationPage() {
        Navigator.of(context).pushReplacementNamed("/PaymentPage");
      }

      @override
      void initState() {
        super.initState();
        startTime();
      }

 final notificationBar = AppBar(
       centerTitle: true,
        leading: Icon(Icons.arrow_back, size: 30.0, 
        color: Colors.orange.shade700),
        title: Text("Notifications", style: TextStyle(color:Colors.orange.shade700, 
        fontFamily: "Poppins", fontSize: 25.0), 
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

   final notificationHead = new Padding(
    padding: EdgeInsets.only(left: 5.0, right: 5.0),
    child: new Text(
      "Earlier",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 25.0,
      ),
      textAlign: TextAlign.left,
    ),
  );


 final notificationSubHead = const Text.rich(
  const TextSpan(
    children: const <TextSpan>[
      const TextSpan(text: ' vibe ', 
      style: const TextStyle(
        color: Colors.orange,
        fontSize: 25.0,
       ),
       ),
      const TextSpan(text: 'Spot', 
      style: const TextStyle(
        color:Colors.white,
        fontSize: 25.0)),
    ],
  ),
);


    
    final coinTransfer = new Card(
      color: Colors.grey,
      child: new Column(
       mainAxisSize: MainAxisSize.min,
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const ListTile(
            leading: const Icon(Icons.arrow_upward, color: Colors.yellow, size: 25.0),
            title: const Text('Coins Transfer', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),
              ),
              subtitle: const Text('14 July, 2018', 
              style: TextStyle(
              color: Colors.white, 
              fontStyle: FontStyle.italic,
              fontSize: 15.0),
              ),
            trailing: const Text('Transfer', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),
              ),
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
            leading: const Icon(Icons.arrow_downward, color: Colors.blueAccent, size: 25.0),
            title: const Text('Account Recharge', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),
              ),
              subtitle: const Text('14 July, 2018', 
              style: TextStyle(
              color: Colors.white, 
              fontStyle: FontStyle.italic,
              fontSize: 15.0),
              ),
            trailing: const Text('Credit', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),
              ),
            onTap: null,
          ),
        ],
      ),
    );

       final general = new Card(
      color: Colors.grey,
      child: new Column(
       mainAxisSize: MainAxisSize.min,
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const ListTile(
            leading: const Icon(Icons.cloud_circle, color: Colors.orange, size: 25.0),
            title: const Text('General', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),
              ),
              subtitle: const Text('14 July, 2018', 
              style: TextStyle(
              color: Colors.white, 
              fontStyle: FontStyle.italic,
              fontSize: 15.0),
              ),
            trailing: const Text('General', 
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.0),
              ),
            onTap: null,
          ),
        ],
      ),
    );


  @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: notificationBar,
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              SizedBox(height: 30.0),
              notificationHead,
              SizedBox(height: 20.0),
              notificationSubHead,
              new Divider(
                 color: Colors.white,
              ),
              SizedBox(height: 25.0),
              coinTransfer,
              SizedBox(height: 15.0),
              recharge,
              SizedBox(height: 15.0),
              general,
            
              
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