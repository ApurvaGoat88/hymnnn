import 'package:flutter/material.dart';
import 'package:spotify/features/library_screen/widget/actions.dart';
class Headers extends StatelessWidget {
  const Headers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FirstActions(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:12.0),
            child: ActionWidgets(),
          )
        ],
      ),
    );
  }
}

class FirstActions extends StatelessWidget {
  const FirstActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:10.0),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.purple,
            child: Text('S',style: TextStyle(
                color: Colors.white
            ),),
          ),
        ),
        SizedBox(width: 8,),
        Text('Your Library',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 25
        ),),
      ],
    );
  }
}
