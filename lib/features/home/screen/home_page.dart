import 'package:flutter/material.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/common/widgets/bottom_nav_bar.dart';
import 'package:spotify/common/widgets/header_actions.dart';
import 'package:spotify/features/home/widgets/jump_section.dart';
import 'package:spotify/features/home/widgets/just_for_you.dart';
import 'package:spotify/features/home/widgets/playlist_section.dart';
import 'package:spotify/features/home/widgets/recently_played.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.primary,

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: AppColor.gradient,
          )
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            SizedBox(
              height: 21,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal:12.0),
                 child: Text('Good evening',style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
               ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:12.0),
                  child: HeaderActions(),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 250,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: PlaylistSection(),
              ),

            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: Text('Recently Played',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: Recentlyplayed(),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: Text('Jump back In',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: JumpinSection(),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: Text('Just for You <3',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: JustForYou(),
            ),
          ],
        ),
      ),
    );
  }
}
