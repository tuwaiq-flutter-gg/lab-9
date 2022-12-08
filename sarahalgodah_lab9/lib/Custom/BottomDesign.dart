
import 'package:flutter/material.dart';

class BottomDesign extends StatelessWidget {
  const BottomDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(height: 2, width: 278
          , color: Colors.grey[800],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:  8.0),
            child: Text("Or connect with"),
          ),
         
        ],),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.asset("images/SignInAndSignUp/Male.png"),
        Padding(
    padding: const EdgeInsets.only(right:8.0),
    child: Row(
      children: [
      Image.asset("images/SignInAndSignUp/facebook.png"),
      SizedBox(width: 10,),
      Image.asset("images/SignInAndSignUp/Google.png"),
    ],),
        )
      ],)
      ],
    );
  }
}
