import 'dart:async';
import 'package:flutter/material.dart';

class ReleasePage extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  ReleasePageState createState() => ReleasePageState();
}

class ReleasePageState extends State<ReleasePage> {
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/TrackListingPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  final releaseHead = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: new Text(
      "Your Release",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 30.0,
      ),
      textAlign: TextAlign.left,
    ),
  );

  final releasename = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Release name',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );

  final labelname = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Label name',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );



  final test = Container(
    padding: EdgeInsets.all(10.0),
    height: 200.0,
    width: 100.0,
    color: Colors.black26.withOpacity(0.85),
    child: new OutlineButton(
               borderSide: BorderSide(color:Colors.orange.shade700),
              //icon: const Icon(Icons.add, size: 18.0),
              child:  Text('UPLOAD ARTWORK',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
                  ),
              onPressed: () {
                // Perform some action
              },
            ),

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        //leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        title: Text("Delete", style: TextStyle(color: Colors.orange.shade700)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            iconSize: 30.0,
            color: Colors.orange.shade700,
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            children: <Widget>[
              releaseHead,
              SizedBox(height: 10.0),
              releasename,
              SizedBox(height: 20.0),
              labelname,
              SizedBox(height: 30.0),
              test,
              //artworkUploadBtn,
              // SizedBox(height:30.0),
              //nextButton,
            ]),
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
            textTheme: Theme.of(context).textTheme.copyWith(
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
              title: Text("Wallet")),
        ],
      ),
    );
  }
}
Widget testUploadArtwork(){

  return Container(
    padding: EdgeInsets.all(10.0),
    height: 200.0,
    width: 100.0,
    color: Colors.black26.withOpacity(0.85),

   child: Stack(
     children: <Widget>[
       
     ],
   ),


    // child: new OutlineButton(
    //            borderSide: BorderSide(color:Colors.red),
    //           //icon: const Icon(Icons.add, size: 18.0),
    //           child:  Text('UPLOAD ARTWORK'),
    //           onPressed: () {
    //             // Perform some action
    //           },
    //         ),

  );

}
