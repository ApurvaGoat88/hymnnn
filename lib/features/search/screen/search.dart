import 'package:flutter/material.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/features/search/widgets/genre_grid.dart';
import 'package:spotify/features/search/widgets/search_widget.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColor.primary,
      child:const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:   Column(

            children: [
            SizedBox(
              height: 55,
            ),
              SearchBarWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:12.0),
                child: SizedBox(
                  // color: Colors.red,

                  width: double.infinity,
                  child: Text('Your Top Genres',textAlign: TextAlign.left,style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 887,child: GenreTiles())
            ],
          ),
      ),
    );

  }
}
