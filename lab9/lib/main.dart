import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab9/Pages/Account.dart';
import 'package:lab9/Pages/ChangePass.dart';
import 'package:lab9/Pages/Home.dart';
import 'package:lab9/Pages/Order.dart';
import 'package:lab9/Pages/SignIn.dart';
import 'package:lab9/Pages/SignUp.dart';
import 'package:lab9/Pages/Voucher.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //home: SignIn(),
     //home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}