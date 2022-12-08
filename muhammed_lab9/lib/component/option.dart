import 'package:flutter/material.dart';


class option extends StatelessWidget {
  String? text;
   option({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$text", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
          Icon(Icons.arrow_forward_ios_outlined, size: 20,),
        ],
      ),
    );
  }
}