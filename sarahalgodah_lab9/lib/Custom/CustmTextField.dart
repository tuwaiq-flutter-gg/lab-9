
import 'package:flutter/material.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class CustmTextField extends StatelessWidget {
   CustmTextField({super.key, this.hintText, this.iconsP});
  String? hintText;
  Icon? iconsP;

  @override
  Widget build(BuildContext context) {
    return TextField(
                  decoration: InputDecoration(
                    prefixIcon: iconsP,
                      filled: true,
                      fillColor: lightFaildColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      hintText: hintText.toString()),
                ) ;
  }
}