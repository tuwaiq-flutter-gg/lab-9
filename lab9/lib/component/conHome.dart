import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConHome extends StatelessWidget {
  ConHome({super.key, this.label, this.image, this.color});
  String? label;
  String? image;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Image.asset("$image"),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label!)
      ],
    );
  }
}
