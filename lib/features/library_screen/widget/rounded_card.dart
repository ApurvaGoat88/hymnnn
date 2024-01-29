import 'package:flutter/material.dart';
class RoundedCard extends StatelessWidget {
  const RoundedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 30,
          margin: EdgeInsets.symmetric(horizontal: 10),

          // width: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 2),
            child: Text(
              'Playlist',style: TextStyle(
              fontSize: 15,color: Colors.grey
            ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey
            ),
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          // margin: EdgeInsets.symmetric(horizontal: 10),

          // width: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 2),
            child: Text(
              'Artists',style: TextStyle(
                fontSize: 15,color: Colors.grey
            ),
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey
              ),
              borderRadius: BorderRadius.circular(20)
          ),
        )
      ],
    );
  }
}
