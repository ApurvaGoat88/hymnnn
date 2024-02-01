import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/features/home/screen/home_page.dart';
import 'package:spotify/features/library_screen/screen/library_screen.dart';
import 'package:spotify/features/login/screen/link.dart';
import 'package:spotify/features/premium_screen/premium_screen.dart';
import 'package:spotify/features/search/screen/search.dart';
import 'package:spotify/features/stage/stage.dart';
import 'package:spotify/firebase_options.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized() ;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':  (context) =>  LinkPage(),
      // '/search':(context) => const Search(),
      // '/library': (context) => const LibraryScreen(),
      // '/premium':(context) => const PremiumScreen()
    },
  ));
}

