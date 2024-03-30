import 'package:flutter/material.dart';
import 'package:spotify/bottom_navigation.dart';
import 'package:spotify/premium/widgets/Cards.dart';
import 'package:spotify/premium/widgets/buttons.dart';
import 'package:spotify/premium/widgets/currentplan.dart';
import 'package:spotify/premium/widgets/premiumplan.dart';
class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(18, 18, 18, 1),
        body: ListView(
        
          children:const[
            SizedBox(height: 70,),
            Text('Get 9 months of \n premium for ₹ 100',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'LibreFranklin',
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            ),
            Cards(),
            Buttons(text :"GET PREMIUM"),
            SizedBox(height: 10,),
            Text('Terms and conditions apply. Open only to users who aren\'t subscribed to a recurring Premium plan and who haven\'t purchased a 12-month one-time Premium plan at a promotional price. Offer ends 8/15/21.',
           textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(184, 184, 184, 10),
              fontSize: 14
            ),),
            CurrentPlan(),
            PremiumPlan()
          ],
        ),
        bottomNavigationBar: BottomBar(3),
      ),
    );
  }
}