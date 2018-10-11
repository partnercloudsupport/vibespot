import 'dart:async';
import 'package:flutter/material.dart';

class FeatureArtistPage extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  FeatureArtistPageState createState() => FeatureArtistPageState();
}

class FeatureArtistPageState extends State<FeatureArtistPage> {
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/WalletPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  //final Radius radius;

  final featureHead = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: new Text(
      "Featured artist",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 30.0,
      ),
      textAlign: TextAlign.left,
    ),
  );

 final featureName = TextField(

    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Featured artist ',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
 



  final contributor = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: new Text(
      "Featured artist",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 30.0,
      ),
      textAlign: TextAlign.left,
    ),
  );

  final contributorContainer = Container(
    padding: EdgeInsets.all(10.0),
    height: 250.0,
    width: 100.0,
    color: Colors.black26.withOpacity(0.85),
    child: new OutlineButton(
               borderSide: BorderSide(color:Colors.white),
              //icon: const Icon(Icons.add, size: 18.0),
              child:  Text('Add list of Contributors', 
              style: TextStyle(color:Colors.white, 
              fontSize: 15.0,), 
              textAlign: TextAlign.left,
              //textDirection: TextDirection.ltr,
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
        title: Text("Save", style: TextStyle(color: Colors.orange.shade700)),
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
      backgroundColor: Colors.black38,
      body: Center(
        child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            children: <Widget>[
              featureHead,
              SizedBox(height: 10.0),
              featureName,
              SizedBox(height: 20.0),
              contributor,
              SizedBox(height: 10.0),
              contributorContainer,
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
// Widget testUploadArtwork(){

//   return Container(
//     padding: EdgeInsets.all(10.0),
//     height: 200.0,
//     width: 100.0,
//     color: Colors.black26.withOpacity(0.85),

//    child: Stack(
//      children: <Widget>[
       
//      ],
//    ),


//     // child: new OutlineButton(
//     //            borderSide: BorderSide(color:Colors.red),
//     //           //icon: const Icon(Icons.add, size: 18.0),
//     //           child:  Text('UPLOAD ARTWORK'),
//     //           onPressed: () {
//     //             // Perform some action
//     //           },
//     //         ),

//   );

// }
