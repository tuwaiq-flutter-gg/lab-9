import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFi extends StatelessWidget {
  TextFi({super.key, this.hint});
  String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 50,
      child: TextField(
          decoration: InputDecoration(
        filled: true,
        hintText: hint,
        fillColor: Color(0xffECF0F1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      )),
    );
  }
}
