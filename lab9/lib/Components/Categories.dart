import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatelessWidget {
  const Categories(
      {super.key,
      required this.ContainerColor,
      required this.pic,
      required this.name});
  final ContainerColor;
  final String pic;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 15, 5),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: ContainerColor,
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(pic),
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ],
    );
  }
}
