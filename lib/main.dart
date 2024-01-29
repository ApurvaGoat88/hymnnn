import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/features/home/screen/home_page.dart';
import 'package:spotify/features/library_screen/screen/library_screen.dart';
import 'package:spotify/features/premium_screen/premium_screen.dart';
import 'package:spotify/features/search/screen/search.dart';
import 'package:spotify/features/stage/stage.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized() ;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':  (context) =>  MyHomePage(),
      // '/search':(context) => const Search(),
      // '/library': (context) => const LibraryScreen(),
      // '/premium':(context) => const PremiumScreen()
    },
  ));
}

