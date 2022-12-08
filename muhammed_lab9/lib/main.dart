import 'package:flutter/material.dart';
import 'package:muhammed_lab9/Views/SignIn.dart';
import 'package:muhammed_lab9/Views/changePass.dart';
import 'package:muhammed_lab9/testing/testing.dart';

import 'Views/PageNav.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sigIn(),
    );
  }
}