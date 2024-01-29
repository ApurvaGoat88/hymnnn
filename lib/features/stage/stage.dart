import 'package:flutter/material.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/features/home/screen/home_page.dart';
import 'package:spotify/features/library_screen/screen/library_screen.dart';
import 'package:spotify/features/premium_screen/premium_screen.dart';
import 'package:spotify/features/search/screen/search.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        // controller: _pageController,
        // physics: const NeverScrollableScrollPhysics(),


        child:const [
          HomePage(),
          Search(),
          LibraryScreen(),
          PremiumScreen()

        ][_currentIndex],
      ),
      bottomNavigationBar: Theme(data: Theme.of(context).copyWith(canvasColor: AppColor.cardColor), child:Container(
        height: 65,

        decoration: BoxDecoration(
          // gradient: LinearGradient(colors: AppColor.gradient,begin: Alignment.topCenter,end: Alignment.bottomCenter,
          // ),
            color: AppColor.primary
        ),
        child: BottomNavigationBar(onTap: (index){
          setState(() {
            _currentIndex = index ;

          });
        },

          selectedItemColor: Colors.white70,
          unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: true,

          currentIndex: _currentIndex
          ,items:const[
            BottomNavigationBarItem(

                icon: Icon(Icons.home_filled),label: 'Home' ),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search' ),
            BottomNavigationBarItem(icon: Icon(Icons.music_note_rounded),label: 'Library' ),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Premium' ),
          ],type: BottomNavigationBarType.fixed,),
      ))
    );
  }
}