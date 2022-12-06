import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homeTitle extends StatelessWidget {
  homeTitle({super.key, required this.title, required this.isBold});

  final String title;
  final bool isBold;
  double s = 24;
  FontWeight ty = FontWeight.bold;
  @override
  Widget build(BuildContext context) {
    if (isBold) {
      s = 24;
      ty = FontWeight.bold;
    } else {
      s = 14;
      ty == FontWeight.normal;
    }
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 7),
      alignment: Alignment.centerLeft,
      child: Text(
        title.toString(),
        textAlign: TextAlign.justify,
        style: TextStyle(fontWeight: ty, fontSize: s),
      ),
    );
  }
}
