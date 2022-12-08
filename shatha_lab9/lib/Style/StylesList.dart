
import 'package:flutter/material.dart';

// List of Colors
const Color primaryColor = Color(0xffD35400) ;
const Color secondaryColor = Color(0xffECF0F1) ;
const Color lightText = Colors.white ;
const Color darkText = Colors.black ;
const Color smallText = Color(0xff34495E);
const Color background = Colors.white ;


// Buttons Style
enum Buttons {

  orange( lightText, primaryColor),
  light( darkText , secondaryColor ) ;

  const Buttons(this.textColor , this.buttonColor);

  final Color textColor ;
  final Color buttonColor ;
}

