import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab9/pages/Home.dart';
import 'package:lab9/pages/MyList.dart';
import 'package:lab9/pages/Order.dart';
import 'package:lab9/pages/Profile.dart';
import 'package:lab9/pages/signIn.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return MaterialApp(
      home: lab9(),
    );
  }
}
