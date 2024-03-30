import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:spotify/premium/widgets/buttons.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Row(
          children: [
           const Text('Premium individual',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),),
            Column(
              children: const[
                 Text('₹100 ',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,

            ),),
               Text('FOR 9 MONTHS ',
            style: TextStyle(
            color: Color.fromRGBO(136, 205, 180 , 100),
            fontSize: 13,
            
            )
               ),
              Text('3 months free with 6 months of \n premium',
            style: TextStyle(
            color: Colors.white,
       
            fontSize: 18,
            ),
            ),
            SizedBox(height: 10,),
           
              ]
            )


          ],
        ),
        SizedBox(height: 40,),
          Buttons(text :"VIEW PLANS",
          ),
            SizedBox(height: 10,),
            Text('Terms and conditions apply. Open only to users who aren\'t subscribed to a recurring Premium plan and who haven\'t purchased a 12-month one-time Premium plan at a promotional price. Offer ends 8/15/21.',
           textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(184, 184, 184, 10),
              fontSize: 14
            ),),
       const  SizedBox(height: 30,),
      ]),


    );
  }
}