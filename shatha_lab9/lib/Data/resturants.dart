
import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Image
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset("images/Rectangle 6.png"),
        ),

        // Info
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            customBoldText(text: "Dapur Ijah Restaurant", color: darkText, size: 14),
            
            Row(children: [
              const Icon(Icons.location_on,color: Colors.black,),
              customRegularText(text: "13 th Street, 46 W 12th St, NY", verySmall: true),
            ],
            ),

            Row(children: [
              const Icon(Icons.access_time_rounded ,color: Colors.black,),
              customRegularText(text: "3 min - 1.1 km", verySmall: true),
            ],
            ),

            // five stars
            Row(children: const [
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
              Icon(Icons.star, color: Colors.yellow,),
            ],),

          ],
        )
      ],
    );
  }
}