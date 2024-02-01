import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:spotify/common/data/data.dart';
import 'package:spotify/common/page_transitons/page_trans.dart';
import 'package:spotify/features/audio/audio_PLAYER.dart';
class Recentlyplayed extends StatefulWidget {
  const Recentlyplayed({super.key});

  @override
  State<Recentlyplayed> createState() => _RecentlyplayedState();
}

class _RecentlyplayedState extends State<Recentlyplayed> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount:  Data().recentlyPlayed.length,itemBuilder: (context,index){
        final data = Data().recentlyPlayed[index] ;
        return Container(
          width: 150,
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            crossAxisAlignment: Data().recentlyPlayed[index]['alignment'] as CrossAxisAlignment,
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.push(context, createRouteRL( AudioPlayerPro(audioURL: data['audio'].toString(),image: data['image'].toString(),name: data['name'].toString(),))) ;
                },
                child: GFAvatar(
                  shape: Data().recentlyPlayed[index]['shape'] as GFAvatarShape,
                  backgroundImage: AssetImage(Data().recentlyPlayed[index]['image'].toString()),
                  radius: 60,
                ),
              ),
             const  SizedBox(
                height: 5,
              ),
              Text(data['name'].toString() ,textAlign:TextAlign.start,
              style:const  TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white70
              ),)
            ],
          ),
        );
      },),
    );
  }
}
