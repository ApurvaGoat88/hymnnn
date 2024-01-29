import 'package:flutter/material.dart';
import 'package:spotify/common/data/data.dart';
class GenreTiles extends StatefulWidget {
  const GenreTiles({super.key});

  @override
  State<GenreTiles> createState() => _GenreTilesState();
}

class _GenreTilesState extends State<GenreTiles> {
  final  data  = Data().genres ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12.0),
      child: GridView(physics: const NeverScrollableScrollPhysics(),gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,

        childAspectRatio: 16/9 ,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7


      ),children: data.map((value){
        return Image.asset(value);
      }).toList(),),
    );
  }
}
