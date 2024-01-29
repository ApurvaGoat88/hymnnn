import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify/common/colors/appcolors.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Theme(data: Theme.of(context).copyWith(canvasColor: AppColor.cardColor), child:Container(
      height: 65,
      
      decoration: BoxDecoration(
        // gradient: LinearGradient(colors: AppColor.gradient,begin: Alignment.topCenter,end: Alignment.bottomCenter,
        // ),
      color: AppColor.primary
      ),
      child: BottomNavigationBar(onTap: (index){
        setState(() {
          print(_currentIndex) ;
          _currentIndex = index;
        });
      },
          selectedItemColor: Colors.white70,

          unselectedItemColor: Colors.white54
        ,items:const[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search' ),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_rounded),label: 'Library' ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Premium' ),
      ],type: BottomNavigationBarType.fixed,),
    ));
  }
}
