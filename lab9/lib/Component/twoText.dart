import 'package:flutter/material.dart';


class TextTwoSide extends StatelessWidget {
  const TextTwoSide({super.key,this.title,this.title1});
final String? title,title1;

  @override
  Widget build(BuildContext context) {
    return 
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(title.toString(),style: TextStyle(color: Color(0xff283B51),fontWeight: FontWeight.bold,fontSize: 18),),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(title1.toString(),style: TextStyle(color:Color(0xff283B51) )),
          ),
      ],
     );

  }
}