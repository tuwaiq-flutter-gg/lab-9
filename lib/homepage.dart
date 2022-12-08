import 'package:flutter/material.dart';
import 'package:lab9/components/buttons.dart';
import 'package:lab9/components/texts.dart';
import 'package:lab9/pages/signin.dart';
import 'package:lab9/pages/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return signinPage();
  }
}