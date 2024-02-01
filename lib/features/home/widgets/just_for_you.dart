import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:spotify/common/data/data.dart';
import 'package:getwidget/getwidget.dart';
import 'package:spotify/common/page_transitons/page_trans.dart';
import 'package:spotify/features/audio/audio_PLAYER.dart';
class JustForYou extends StatefulWidget {
  const JustForYou({super.key});

  @override
  State<JustForYou> createState() => _JustForYouState();
}

class _JustForYouState extends State<JustForYou> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount:  Data().justForYou.length,itemBuilder: (context,index){
        final data = Data().justForYou[index] ;
        return Container(
          width: 150,
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            crossAxisAlignment: Data().justForYou[index]['alignment'] as CrossAxisAlignment,
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.push(context, createRouteRL(AudioPlayerPro(audioURL: data['audio'].toString(),image: data['image'].toString(),name: data['name'].toString(),)));
                },
                child: GFAvatar(
                  shape: Data().justForYou[index]['shape'] as GFAvatarShape,
                  backgroundImage: AssetImage(Data().justForYou[index]['image'].toString()),
                  radius: 75,
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
    );;
  }
}
