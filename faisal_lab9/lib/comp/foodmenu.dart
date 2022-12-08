// ignore_for_file: sort_child_properties_last

import 'package:faisal_lab9/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

Color pr = Color(0xff9B59B6);
Color bl = Color(0xff3498DB);

class foodmenu extends StatelessWidget {
  const foodmenu(
      {super.key, required this.img, required this.name, required this.color});
  final String img;
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 20,
          width: 140,
          child: Text(name.toString()),
          alignment: Alignment.topLeft,
        ),
        Image.asset(
          img.toString(),
          alignment: Alignment.bottomRight,
          height: 100,
          width: 150,
        ),
      ]),
      alignment: Alignment.bottomRight,
      width: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
    );
  }
}
