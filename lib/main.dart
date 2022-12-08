import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:lab9/components/buttons.dart';
import 'package:lab9/components/texts.dart';
import 'package:lab9/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home:HomePage(),
    );
  }
}


// ListView(

//     //   children:
      
//     //   // )
//     //   Text("fff")
//     //   // // textfilds( titlee: "Mohammad"),
//     //   //  CustomeImages="images/noodle.png",
    
//     // ))