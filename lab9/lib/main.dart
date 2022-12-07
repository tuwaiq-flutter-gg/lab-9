import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab9/Sign_In.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
      theme: ThemeData(
          
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
          bottomNavigationBarTheme:const BottomNavigationBarThemeData(backgroundColor:  Color(0xffFFFFFF))
          ),
          
    );
  }
}
