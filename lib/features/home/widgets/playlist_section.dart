import 'package:flutter/material.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/common/data/data.dart';
class PlaylistSection extends StatefulWidget {
  const PlaylistSection({super.key});

  @override
  State<PlaylistSection> createState() => _PlaylistSectionState();
}

class _PlaylistSectionState extends State<PlaylistSection> {
  @override
  Widget build(BuildContext context) {
    return GridView(
    physics: const ScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 16/5.5

    ),children: Data().playlist.map((e) {
      return GestureDetector(
        child: Card(
          color: AppColor.cardColor,
         child: IntrinsicHeight(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(e['image'].toString()),
                ),
              const  SizedBox(
                 width: 5,
               ),
               Text(e['name'].toString(),style:const  TextStyle(
                 color: Colors.white,
                 fontSize: 15
               ),)
             ],
           ),
         ),
        ),
      ) ;
    }).toList() ,
    );
  }
}
