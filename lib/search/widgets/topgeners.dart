import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:spotify/search/widgets/tiles.dart';
import 'package:spotify/data.dart';

class TopGenre extends StatelessWidget {
  const TopGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        SizedBox(height: 10,),
        Text(
          'Your top generes',
          style: TextStyle(
            fontFamily: 'LibreFraklin',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        SizedBox(height: 10,),
        Tiles(something: Data().genres),
        Text( 'Browse All',
        style: TextStyle(
            fontFamily: 'LibreFraklin',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
          SizedBox(height: 10,),
          Tiles(something: Data().browseall)
      ],

    );
  }
}