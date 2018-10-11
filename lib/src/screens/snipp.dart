import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';

class DrawerBar extends StatefulWidget{
  DrawerBarState createState()=>  DrawerBarState();
}


class DrawerBarState extends State<DrawerBar> {


  @override
  Widget build(BuildContext context){
   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home", 
        style: TextStyle(
        color:Colors.orange.shade700, 
        fontFamily: "Poppins", 
        fontSize: 30.0), 
        textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            iconSize: 30.0,
            color: Colors.orange.shade700,
            icon: Icon(Icons.person, 
            size: 30.0, 
            color: Colors.orange.shade700,
            ),
            onPressed: () {

            },
          ),
        ],
        // icons: Icon(Icons.add),
       backgroundColor: Colors.black,
      ),
      //appBar: signInBar,
      backgroundColor: Colors.black12,

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Azeez Femi"),
              accountEmail: Text("Azizakinsola@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  //radius: 20.0,
                  child: Icon(Icons.person, size: 60.0,),
                  //Image.asset('assets/images/user-avatar.png'),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                  fit: BoxFit.cover
                )
              ),
      
            ),
            new Container(
              color: Colors.black,
              child: Column(
                children: <Widget>[
                   ListTile(
                    leading: Icon(Icons.code, color: Colors.white),
                    //trailing: Icon(Icons.code),
                    title: Text("Scan QR Code", 
                    style: TextStyle(
                      color: Colors.white
                      ),
                      ),
                    //   onTap: () {
                    //     Navigator.of(context).pop();
                    //     Navigator.of(context).push(new MaterialPageRoute(
                    //     builder: (BuildContext context) => 
                    //     FeatureArtistPage(),
                    //     ),
                    //   );
                    // }
                    ),

                    ListTile(
                    leading: Icon(Icons.notifications, color: Colors.white),
                    //trailing: Icon(Icons.code),
                    title: Text("Notifications", 
                    style: TextStyle(
                      color: Colors.white,
                      ),
                      ),
                    //   onTap: () {
                    //     Navigator.of(context).pop();
                    //     Navigator.of(context).push(new MaterialPageRoute(
                    //     builder: (BuildContext context) => 
                    //     FeatureArtistPage(),
                    //     ),
                    //   );
                    // }
                    ),

                   

            ListTile(
              leading: Icon(Icons.local_convenience_store, color: Colors.white,),
              title: Text("Recharge",  style: TextStyle(
                      color: Colors.white
                      ),),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(new MaterialPageRoute(
            //     builder: (BuildContext context) => 
            //     FeatureArtistPage(),
            //     ),
            //   );
            // }
            ),

            ListTile(
              leading: Icon(Icons.subscriptions, color: Colors.white),
              title: Text("Subscribe",  style: TextStyle(
                      color: Colors.white
                      ),),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(new MaterialPageRoute(
            //     builder: (BuildContext context) => 
            //     FeatureArtistPage(),
            //     ),
            //   );
            // }
            ),

            ListTile(
              leading: Icon(Icons.free_breakfast, color: Colors.white),
              title: Text("Get Freebies",
               style: TextStyle(
                      color: Colors.white
                      ),),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(new MaterialPageRoute(
            //     builder: (BuildContext context) => 
            //     FeatureArtistPage(),
            //     ),
            //   );
            // }
            ),

            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.white),
              title: Text("My Pre-orders",  style: TextStyle(
                      color: Colors.white
                      ),),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(new MaterialPageRoute(
            //     builder: (BuildContext context) => 
            //     FeatureArtistPage(),
            //     ),
            //   );
            // }
            ),

            // ListTile(
            //   trailing: Icon(Icons.attach_money),
            //   title: Text("Transfer Coins"),
            //   // onTap: () {
            //   //   Navigator.of(context).pop();
            //   //   Navigator.of(context).push(new MaterialPageRoute(
            //   //   builder: (BuildContext context) => 
            //   //   FeatureArtistPage(),
            //   //   ),
            //   // );
            // //}
            // ),
            
            ListTile(
              leading: Icon(Icons.add_to_home_screen, 
              color: Colors.white),
              title: Text("Theme", style: TextStyle(
                      color: Colors.white
                      ),),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(new MaterialPageRoute(
            //     builder: (BuildContext context) => 
            //     FeatureArtistPage(),
            //     ),
            //   );
            // }
            ),


            ListTile(
              leading: Icon(Icons.help, color: Colors.white),
              title: Text("Help",  style: TextStyle(
                      color: Colors.white
                      ),),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(new MaterialPageRoute(
            //     builder: (BuildContext context) => 
            //     FeatureArtistPage(),
            //     ),
            //   );
            // }
            ),

            //Divider(),

            ListTile(
              leading: Icon(Icons.close, color: Colors.white),
              title: Text("Close",  style: TextStyle(
                      color: Colors.white
                      ),),
              onTap: () {
                Navigator.of(context).pop();
              //   Navigator.of(context).push(new MaterialPageRoute(
              //   builder: (BuildContext context) => 
              //   FeatureArtistPage(),
              //   ),
              // );
            }
            ),
                  ],
                ),
              ),
          ],
              ),
            ),
           
      );

      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              // songHead,
              // SizedBox(height: 20.0),
              // dataTag,
              // SizedBox(height: 40.0),
              // noDataImage,
              // SizedBox(height: 8.0),
              // tagTextSong,
              // SizedBox(height: 8.0),
              // tagTextSongSub,
            
          ]
        ),
      );
      //bottomNavigationBar: new BtnNavBarTab(),
     //);
  }
}


