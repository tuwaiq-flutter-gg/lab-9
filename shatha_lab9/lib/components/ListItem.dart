
import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.check});
  final bool check ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        // item image
        Image.asset("images/Rectangle 6.png"),

        // item info
        Column(
          children: [

            customBoldText(text: 'Sale off 30% for Pizza', color: darkText, size: 14),
            
            Row(
              children: [
                const Icon(Icons.access_time_rounded),
                customRegularText(text: 'Apr 10 - Apr 30', verySmall: true)
              ],
            ),

            customRegularText(text: '11 days left', verySmall: true , color: Colors.red)

          ],
        ),

        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: check ? primaryColor : secondaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.check, color: secondaryColor,),
        )
      ],
    );
  }
}