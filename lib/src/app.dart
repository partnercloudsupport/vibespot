import 'package:flutter/material.dart';
import "./screens/vibemusic.dart";
import "./screens/splash_page.dart";
import "./screens/home_page.dart";
import "./screens/login_page.dart";
import "./screens/signup_home.dart";
import "./screens/signup_page1.dart";
import "./screens/signup_page2.dart";
import "./screens/signup_page3.dart";
import "./screens/music_page.dart";
import "./screens/song_music2_page.dart";
import "./screens/instruction_page.dart";
import "./screens/release_page.dart";
import "./screens/wallet_page.dart";
import "./screens/feature_artist_page.dart";
import "./screens/audio_file_page.dart";
import "./screens/track_listing_page.dart";
import "./screens/profile_drawer_page.dart";
import "./screens/wallet_account.dart";
import "./screens/add_card.dart";
import "./screens/transfer_page.dart";
import "./screens/help_page.dart";
import "./screens/qr_page.dart";
import "./screens/notification_page.dart";


class App extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
      // '/LogInPage.tag': (BuildContext context) => new LogInPage(),
      "/SplashPage": (BuildContext context) => new SplashPage(),
      "/HomePage": (BuildContext context) => new HomePage(),
       "/LogInPage": (BuildContext context) => new LogInPage(),
       "/signUpHome": (BuildContext context) => new signUpHome(),
       "/SignUpPage1": (BuildContext context) => new SignUpPage1(),
       "/SignUpPage2": (BuildContext context) => new SignUpPage2(),
       "/SignUpPage3": (BuildContext context) => new SignUpPage3(),
       "/MusicPage": (BuildContext context) => new MusicPage(),
       "/SongMusic2": (BuildContext context) => new SongMusic2(),
       "/InstructionPage": (BuildContext context) => new InstructionPage(),
       "/ReleasePage": (BuildContext context) => new ReleasePage(),
       "/WalletPage": (BuildContext context) => new WalletPage(),
       "/FeatureArtistPage": (BuildContext context) => new FeatureArtistPage(),
       "/AudioPage": (BuildContext context) => new AudioPage(),
       "/TrackListingPage": (BuildContext context) => new TrackListingPage(),
       "/DrawerBar": (BuildContext context) => new DrawerBar(),
       "/WalletAccount": (BuildContext context) => new WalletAccount(),
       "/AddCard": (BuildContext context) => new AddCard(),
       "/TransferPage": (BuildContext context) => new TransferPage(),
       "/HelpPage": (BuildContext context) => new HelpPage(),
       "/QrPage": (BuildContext context) => new QrPage(),
       "/NotificationPage": (BuildContext context) => new NotificationPage(),
      };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VibeSPot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.black,
        canvasColor: Colors.black,
        fontFamily: 'Poppins', 
        ),
        //home: DrawerBar(),
        //home: TrackListingPage(),
       //home: vibeMusicSplash(),
        home: AddCard(),
        routes: routes,
    );
  }
}
