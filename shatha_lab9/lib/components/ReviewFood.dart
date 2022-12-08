

import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';

class ReviewFood extends StatelessWidget {
  const ReviewFood({super.key, required this.like, required this.dislike});
  final bool like;
  final bool dislike;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("images/Rectangle 6.png"),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customBoldText(text: "Dogmie jagong tutung", color: darkText, size: 14),
            Row(
              children: [
                const Icon(Icons.thumb_up_off_alt),
                customRegularText(text: "999+ | ", verySmall: true),
                const Icon(Icons.thumb_down_off_alt),
                customRegularText(text: "93+", verySmall: true),
              ],
            ),
            customRegularText(text: "\$99.99", verySmall: true , color: Colors.green)
          ],
        ),

        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (dislike) ? primaryColor: secondaryColor, 
          ),
          child: Icon(Icons.thumb_up_off_alt , color: (!dislike) ? primaryColor: secondaryColor,),
        ),

        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (like) ? primaryColor: secondaryColor, 
          ),
          child: Icon(Icons.thumb_down_off_alt , color: (!like) ? primaryColor: secondaryColor,),
        ),
      ],
    );
  }
}