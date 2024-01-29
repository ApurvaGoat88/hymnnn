import 'package:flutter/material.dart';
import 'package:spotify/common/colors/appcolors.dart';
class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 160,
      child:  Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search' ,textAlign: TextAlign.start,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: const Row(
                children: [
                  SizedBox(height: 60,),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search,size: 30,color: Colors.black54,),
                  ),
                  Text('What do you want to listen ? ',textAlign: TextAlign.start,style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
