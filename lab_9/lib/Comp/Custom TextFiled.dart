import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.title, required this.textFiledIcon});
  final String title;
  final Icon textFiledIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: textFiledIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(style: BorderStyle.none)),
            filled: true,
            fillColor: GrayColor,
            labelText: title),
      ),
    );
  }
}
