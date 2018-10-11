import 'dart:async';
import 'package:flutter/material.dart';

class AudioPage extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  AudioPageState createState() => AudioPageState();
}

class AudioPageState extends State<AudioPage> {
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/FeatureArtistPage");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  //final Radius radius;

  final audioHead = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: new Text(
      "Audio file",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 30.0,
      ),
      textAlign: TextAlign.left,
    ),
  );


  final subAudio = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: new Text(
      "Where do you have it stored?",
      style: new TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins-Light',
        fontSize: 15.0,
      ),
      textAlign: TextAlign.left,
    ),
  );



final fileButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(40.0),
          shadowColor: Colors.orange.shade200,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){

              } ,
              color: Colors.deepOrange.shade300,
              child: Text(
                "SELECT FILE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    );

  final fileHead = new Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: new Text(
      "File details",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 30.0,
      ),
      textAlign: TextAlign.left,
    ),
  );


  final tracTitle = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Track title ',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
 

 final version = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Version (Optional)',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final original = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Original / remix / cover',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final explicitLyrics = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Explicit Lyrics',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final recordYear = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Recording year',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final musicStyle = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Music style / genre',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
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
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            children: <Widget>[
              audioHead,
              SizedBox(height: 5.0),
              subAudio,
              SizedBox(height: 10.0),
              fileButton,
              SizedBox(height: 15.0),
              fileHead,
              SizedBox(height: 5.0),
              tracTitle,
              SizedBox(height: 5.0),
              version,
              SizedBox(height: 5.0),
              original,
              SizedBox(height: 5.0),
              explicitLyrics,
              SizedBox(height: 5.0),
              recordYear,
              SizedBox(height: 5.0),
              musicStyle,
              //SizedBox(height: 50.0),
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
