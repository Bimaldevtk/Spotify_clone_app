import 'package:flutter/material.dart';
import 'package:spotify/search/widgets/topgeners.dart';
import 'package:spotify/search/widgets/search_widget.dart';
import 'package:spotify/bottom_navigation.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18,18, 18, 80),
        body: Container(
          child: ListView(
            children: const[
              Text('Search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontFamily: 'LibreFranklin',
                fontWeight: FontWeight.bold
              ),
              
              ),
              SearchWidget(),
              TopGenre(),
            ],
    
          ),
        ), 
        bottomNavigationBar: BottomBar(1),
      ),
    );
  }
}