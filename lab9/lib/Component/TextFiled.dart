

import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  const TextFiled({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
       Padding(
         padding: const EdgeInsets.only(left: 20, right: 20),
         child: TextField(
      decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
            ),
            fillColor: Color(0xffECF0F1),
            hintText:title.toString()),
             ),
       )
    ]);
          
  }
}