
import 'package:flutter/material.dart';
import 'package:spotify/bottom_navigation.dart';
import 'package:spotify/header_actions.dart';
import 'package:spotify/Home/widgets/playlists.dart';
import 'package:spotify/Home/widgets/recent.dart';
import 'package:spotify/Home/widgets/jumpin.dart ';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea (
      child: Scaffold(
        body: Container(decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
             Color.fromRGBO(57, 90, 81, 1),
             Color.fromRGBO(46, 71, 65, 1),
             Color.fromRGBO(43, 64, 59, 1),
             Color.fromRGBO(18, 18, 18, 1),
            ],
            stops: [
              0.01,
              0.03,
              0.06,
              0.2,
            ]
          )
        ),
        child: ListView (
          children: [
            Row(
              children:const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Good Evening',
                  style: TextStyle(
                    color: Colors.white,
                     fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LibreFranklin'
                  ),
                  ),
                ),
                HeaderActions(),
              ],
            ),
              const  SizedBox(height: 10,),
              Container(
                height: 210,
                child: Playlists(),
              ),
              SizedBox(height: 20,),
              RecentlyPlayed(),
              JumpIn(),
        
          ],
      
        )
          
        ) ,
        bottomNavigationBar: BottomBar(0),
          
      ),
    );
  }
}