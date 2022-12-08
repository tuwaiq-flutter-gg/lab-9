import 'package:flutter/material.dart';
 import 'package:get/get_navigation/get_navigation.dart';
import 'package:khuloudlab9/page/signin.dart';
 

 void main() {
   runApp(const MyApp());
 }

 Color lightgrey = Color.fromARGB(255, 223, 223, 223);
 Color myorange = Color.fromARGB(255, 213, 87, 9);

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       home: Signin(),
       debugShowCheckedModeBanner: false,
     );
   }
 }