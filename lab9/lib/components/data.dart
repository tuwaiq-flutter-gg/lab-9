import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/pages/home.dart';

class MyData extends GetxController{

  String loc = "Press the icon to show your location.";

  updateLoc() {
    loc = position.toString();
    update();
  }

}