import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:spotify/main.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key ,required this.text});
  final String text;   

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(80,  0, 80, 0),
        child: TextButton
        (onPressed:(){} ,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
      
          ),
        ),
        child: Padding( 
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal:8),
          child: Text(
           text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              letterSpacing: 2
                 
            ),
          ),
        ),
        ),
      )  ,
    );
  }
}