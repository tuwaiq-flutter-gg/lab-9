import 'package:flutter/material.dart';

import '../style.dart';

class BTN extends StatelessWidget {
  const BTN(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.foregroundColor});
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: foregroundColor,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
      ),
    );
  }
}
