import 'package:flutter/material.dart';
import 'package:lab9/pages/home.dart';
import 'package:lab9/pages/login.dart';
import 'package:lab9/pages/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
