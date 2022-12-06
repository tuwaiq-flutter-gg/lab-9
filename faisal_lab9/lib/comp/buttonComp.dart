// ignore_for_file: prefer_const_constructors

import 'package:faisal_lab9/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class butooncomp extends StatelessWidget {
  const butooncomp({super.key, required this.title});
  final String title;
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
          onPressed: () {},
          child: Text(
            title.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ));
  }
}
