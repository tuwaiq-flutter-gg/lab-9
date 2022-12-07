import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, right: 90),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Color(0xffFFC107),
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFC107),
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFC107),
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFC107),
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFC107),
            size: 20,
          ),
        ],
      ),
    );
  }
}
