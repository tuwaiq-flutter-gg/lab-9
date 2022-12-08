// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory(
      {super.key,
      required this.icon,
      required this.title,
      required this.bkgcolor,
      required this.fgcolor});
  final IconData icon;
  final String title;
  final Color bkgcolor;
  final Color fgcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            width: 75,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bkgcolor,
            ),
            child: Icon(
              color: fgcolor,
              icon,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text(title))
        ],
      ),
    );
  }
}
