// ignore_for_file: prefer_const_constructors

import 'package:faisal_lab9/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class butooncomp extends StatelessWidget {
  const butooncomp({super.key, required this.title, required this.onpress});
  final String title;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(350, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: or,
          ),
          onPressed: onpress,
          child: Text(
            title.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ));
  }
}
