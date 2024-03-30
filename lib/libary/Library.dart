import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:getwidget/getwidget.dart';
import 'package:spotify/bottom_navigation.dart';
import 'package:spotify/libary/widgets/header_widget.dart';
import 'package:spotify/libary/widgets/header_widget.dart';
import 'package:spotify/libary/widgets/rounded_cards.dart  ';
import 'package:spotify/data.dart';
import 'package:spotify/libary/widgets/tiles.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: ListView(
        children: [
          Header(),
          Row(
            children:const [
              SizedBox(width: 10,),
              RoundedCards(text: 'Playlists'),
              RoundedCards(text: 'Artists')
            ],
          ),
         const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Row(
                  children: const[
                    Icon(Icons.compare_arrows_rounded,
                    color: Colors.white,
                    size: 15,),
                    SizedBox(width: 10,),
                    Text('Recently Played',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'LibreFranklin',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ), 
               const Icon  (Icons.add_box_outlined,
                color: Colors.white,
                    size: 15,
                
                )
              ],
            ),
          ),
          ...Data().library.map((val){
            return GFListTile(
             avatar: GFAvatar(
              backgroundImage: AssetImage(
                val['image'] as dynamic
              ),
              

              ),
              title:Text(
                val['name'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              )  ,
             subTitle:Text(
                val['subtitle'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(   167, 167, 167, 1),
                  fontSize: 14,
                ),
              )  
            );
          }).toList(),
          Tiles(title: 'Add Artists',
          shape :GFAvatarShape.circle),
           Tiles(title: 'Add Podcasts and show',
          shape :GFAvatarShape.square)
        ],
      ),
      bottomNavigationBar: BottomBar(2),
    );
  }
} 