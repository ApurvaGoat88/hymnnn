import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:spotify/common/data/data.dart';
class JumpinSection extends StatefulWidget {
  const JumpinSection({super.key});

  @override
  State<JumpinSection> createState() => _JumpinSectionState();
}

class _JumpinSectionState extends State<JumpinSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount:  Data().anotherRandomList.length,itemBuilder: (context,index){
        final data = Data().anotherRandomList[index] ;
        return Container(
          width: 150,
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            crossAxisAlignment: Data().anotherRandomList[index]['alignment'] as CrossAxisAlignment,
            children: [
              GestureDetector(
                onTap:(){},
                child: GFAvatar(
                  shape: Data().anotherRandomList[index]['shape'] as GFAvatarShape,
                  backgroundImage: AssetImage(Data().anotherRandomList[index]['image'].toString()),
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
    );
  }
}
