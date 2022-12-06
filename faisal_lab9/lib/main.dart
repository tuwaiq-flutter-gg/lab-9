import 'package:faisal_lab9/src/Login.dart';
import 'package:faisal_lab9/src/SignUp.dart';
import 'package:faisal_lab9/src/account.dart';
import 'package:faisal_lab9/src/changePassword.dart';
import 'package:faisal_lab9/src/home.dart';
import 'package:flutter/material.dart';

Color or = Color(0xffD35400);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
