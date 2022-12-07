import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          height: 2,
          width: 265,
          color: Color(0x3034495E),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Or connect with",
          style: TextStyle(color: Color(0xff34495E)),
        )
      ],
    );
  }
}
