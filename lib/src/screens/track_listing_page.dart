 import 'dart:async';
import 'package:flutter/material.dart';

class TrackListingPage extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  TrackListingPageState createState() => TrackListingPageState();
}

class TrackListingPageState extends State<TrackListingPage> {


  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/AudioPage");
  }

  @override
  void initState() {
    super.initState();
    //_values.addAll(["Track1", "Track2", "Track3"]);
    //_value = _values.elementAt(0);
    startTime();
  }


final uploadButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(40.0),
          shadowColor: Colors.orange.shade700,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){

              } ,
              color: Colors.orange.shade700,
              child: Text(
                "UPLOAD ARTWORK",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    );

  final trackListingHead = new Padding(
    padding: EdgeInsets.only(left: 5.0, right: 5.0),
    child: new Text(
      "Track listing",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 20.0,
      ),
      textAlign: TextAlign.left,
    ),
  );



  //  Widget Listing (){

  //    return Column(
  //     children: <Widget>[
  //       new DropdownButton(
  //         value: _value,
  //         items: _values.map((String value){

  //           return DropdownMenuItem(
  //             value: value,
  //             child: Text(
  //               '${value}'
  //               ),
  //           );

  //         }).toList(), 
  //         onChanged: (String value){
  //             _onChanged(value);
  //         }
  //         ),
  //     ],
  //  }
   


  //   keyboardType: TextInputType.text,
  //   autofocus: false,
  //   decoration: InputDecoration(
  //     hintText: 'Track title ',
  //     filled: true,
  //     fillColor: Colors.white,
  //     contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
  //     border: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //   ),
  // );


  

  final trackListing = TextField(
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

 
 final deliveryHead = new Padding(
    padding: EdgeInsets.only(left: 5.0, right: 5.0),
    child: new Text(
      "Delivery options",
      style: new TextStyle(
        color: Colors.orange.shade700,
        fontFamily: 'Poppins-Bold',
        fontSize: 20.0,
      ),
      textAlign: TextAlign.left,
    ),
  );

 final musicStores = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Music stores',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final country = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Countries',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

 

   final proposedReleaseDate = new Padding(
    padding: EdgeInsets.only(left: 5.0, right: 5.0),
    child: new Text(
      "Proposed release date",
      style: new TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins-Italic',
        fontSize: 20.0,
      ),
      textAlign: TextAlign.left,
    ),
  );
  
  final releaseDate = TextField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Release Date',
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

 final submitReleaseBotton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(40.0),
          shadowColor: Colors.orange.shade700,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){

              } ,
              color: Colors.orange.shade700,
              child: Text(
                "SUBMIT RELEASE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        //leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        title: Text("Delete", style: TextStyle(
          color: Colors.orange.shade700)),
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
              uploadButton,
              SizedBox(height: 5.0),
              trackListingHead,
              SizedBox(height: 10.0),
              trackListing,
              //testCombo,
              //SettingsWidget(),
              SizedBox(height: 15.0),
              deliveryHead,
              SizedBox(height: 5.0),
              musicStores,
              SizedBox(height: 5.0),
              country,
              SizedBox(height: 5.0),
              proposedReleaseDate,
              SizedBox(height: 5.0),
              releaseDate,
              SizedBox(height: 5.0),
              submitReleaseBotton,
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
            primaryColor: Colors.orange.shade700,
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(
                      color: Colors.orange.shade700, fontSize: 20.0),
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

// class SettingsWidget extends StatefulWidget {
//   SettingsWidget({Key key}) : super(key: key);

//   @override
//   _SettingsWidgetState createState() => new _SettingsWidgetState();
// }

// class _SettingsWidgetState extends State<SettingsWidget> {

//   List _cities =
//   ["Cluj-Napoca", "Bucuresti", "Timisoara", "Brasov", "Constanta"];

//   List<DropdownMenuItem<String>> _dropDownMenuItems;
//   String _currentCity;

//   @override
//   void initState() {
//     _dropDownMenuItems = getDropDownMenuItems();
//     _currentCity = _dropDownMenuItems[0].value;
//     super.initState();
//   }

//   List<DropdownMenuItem<String>> getDropDownMenuItems() {
//     List<DropdownMenuItem<String>> items = new List();
//     for (String city in _cities) {
//       items.add(new DropdownMenuItem(
//           value: city,
//           child: new Text(city)
//       ));
//     }
//     return items;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       color: Colors.white,
//       child: new Center(
//           child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new Text("Please choose your city: "),
//               new Container(
//                 padding: new EdgeInsets.all(16.0),
//               ),
//               new DropdownButton(
//                 value: _currentCity,
//                 items: _dropDownMenuItems,
//                 onChanged: changedDropDownItem,
//               )
//             ],
//           )
//       ),
//     );
//   }

//   void changedDropDownItem(String selectedCity) {
//     setState(() {
//       _currentCity = selectedCity;
//     });
//   }

// }

//  class Listing extends StatelessWidget {
//      String _value = null;
//       List<String> _values = new List<String>();

//        @override
//   void initState() {
//     super.initState();
//     _values.addAll(["Track1", "Track2", "Track3"]);
//     _value = _values.elementAt(0);
//     //startTime();
//   }


//   void onChanged(String value){

//     setState(() {
//           _value = value;
//         });
//   }


//     @override
//     Widget build(BuildContext context) {
//       return Column(
//         children: <Widget>[
//         new DropdownButton(
//           value: _value,
//           items: _values.map((String value){

//             return DropdownMenuItem(
//               value: value,
//               child: Text(
//                 '${value}'
//                 ),
//             );

//           }).toList(), 
//           onChanged: (String value){
//               _onChanged(value);
//           }
//           ),
//       ],
//       );
//     }
//   }