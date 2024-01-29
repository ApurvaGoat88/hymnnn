import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/common/data/data.dart';
import 'package:spotify/features/library_screen/widget/header.dart';
import 'package:spotify/features/library_screen/widget/rounded_card.dart';
class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: ListView(
        children:[
          const SizedBox(
            height: 30,
          ),
          const Headers(),
          const SizedBox(height: 20,),
          const RoundedCard(),

          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.compare_arrows_outlined,
                    color: Colors.white,size: 20,),
                    SizedBox(width: 10,),
                    Text('Recently Added' ,style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20
                    ),)
                  ],
                ),
                Icon(Icons.add_circle_outline_outlined,    color: Colors.white70,size: 20,)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...Data().library.map((e) {
            return GFListTile(
              title: Text(e['name'].toString() ,style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),),
              subTitle:  Text(e['subtitle'].toString() ,style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 15
              ),),
              avatar: GFAvatar(
                radius: 45,
                shape: e['shape'] as GFAvatarShape,
                backgroundImage: AssetImage(e['image'].toString()),
              ),
            ) ;
          }),

        ],
      ),
    );
  }
}
