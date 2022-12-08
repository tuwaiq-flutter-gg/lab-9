import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:khuloudlab9/page/Home.dart';


 class MyData extends GetxController{

   String loc = "Press the icon to show your location.";

   updateLoc() {
     loc = position.toString();
     update();
   }

 }