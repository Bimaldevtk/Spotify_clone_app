import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,
      vertical:20 ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children:  [
         const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.deepOrange,
            child:  Text('S',
            style: TextStyle( 
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold
              
              ),
              ),
              
          ),
         const SizedBox(width: 10,),
         const Text('Your Library',
          style: TextStyle(
            fontFamily: 'LibreFranklin',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          Row(
            children:const [
              Icon(Icons.search,
              color:Colors.white ,
              size: 30,
              ),
              SizedBox(width: 15,),
              Icon(Icons.add,
              color:Colors.white ,
              size: 30,
              ),


            ],
          )

         
        ],
      ),
    );
  }
}