import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class defultbutton extends StatelessWidget {
  const defultbutton(
      {super.key,
      required this.text,
      required this.press,
      required this.color});
  final String? text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
