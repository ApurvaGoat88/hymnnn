import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ActionWidgets extends StatelessWidget {
  const ActionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.search,
          color: Colors.white,
          size: 25,),
        SizedBox(width: 25) ,
        Icon(Icons.add,
          color: Colors.white,
          size: 22,)
      ],
    );;
  }
}
