

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab9/Style/StylesList.dart';

// Buttons
Widget customButton({ required Buttons type , required String text ,required void Function() onPressed}){
  return Center(
    child: ElevatedButton(

      // button style
      style: ElevatedButton.styleFrom(
        backgroundColor: type.buttonColor,
        fixedSize: const Size(350, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      
      onPressed: onPressed,

      child: customBoldText(text: text, color: type.textColor, size: 18)

    ),
  );
}

// Bold Text
Text customBoldText({ required String text , required Color color , required double size }){
  return Text(text , style: TextStyle(color: color , fontSize: size , fontWeight: FontWeight.bold),);
}

// Regular Text
Text customRegularText({required String text , Color? color ,required bool verySmall}){
  return Text(
    text, 
    textAlign: TextAlign.end , 
    style: TextStyle(
      fontSize: verySmall? 12 : 14,
      color: (color != null) ? color : smallText
    ),
  );
}

// Text Field
Widget customTextField({required String hint}){
  return Center(
    child: Container(
      margin: const EdgeInsets.all(15),
      child: TextField(
        
        decoration: InputDecoration(
          
          enabledBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: BorderSide.none ,
            borderRadius: BorderRadius.circular(50)
          ),
          filled: true,
          fillColor: secondaryColor,
          hintText: hint,
        ),
      ),
    ),
  );
}

// AppBar
Row customAppBar({ required String title }) {
  return  Row(
            children: [
              IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios_new)),
              customBoldText(text: title, color: darkText, size: 18),
            ],
          );
}











