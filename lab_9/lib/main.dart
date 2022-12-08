import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_9/Pages/Home%20page.dart';
import 'package:lab_9/Pages/Sign%20In.dart';
import 'package:lab_9/Pages/Sign%20up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
