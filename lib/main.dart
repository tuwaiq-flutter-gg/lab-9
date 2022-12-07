import 'package:flutter/material.dart';
import 'package:hadeel_lab9/views/Home.dart';
import 'package:hadeel_lab9/views/SignIn.dart';
import 'package:hadeel_lab9/views/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              color: Color(0xff000000)),
        ),
        scaffoldBackgroundColor: Color(0xfffffffff),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xfffffffff),
          elevation: 0,
        ),
      ),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
