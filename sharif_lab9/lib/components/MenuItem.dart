// ignore_for_file: sort_child_properties_last, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem(
      {super.key,
      required this.image,
      required this.title,
      required this.color});
  final String image;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 20,
              width: 140,
              child: Text(title),
              alignment: Alignment.topLeft,
            ),
            Image.asset(
              image,
              alignment: Alignment.bottomRight,
              height: 100,
              width: 150,
            ),
          ],
        ),
        alignment: Alignment.bottomRight,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
      ),
    );
  }
}
