import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FecGoole extends StatelessWidget {
  const FecGoole({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 140),
          child: Container(
              width: 150,
              height: 80,
              child: Image.asset("images/PngItem_39514 1.png")),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: Image.asset("images/Group.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset("images/google-plus 1.png"),
            ),
          ],
        )
      ],
    );
  }
}
