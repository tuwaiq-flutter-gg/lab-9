import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../main.dart';

class Txtf extends StatelessWidget {
  Txtf({super.key, required this.hint});
  final searchCtrl = TextEditingController();
  String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      controller: searchCtrl,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          fillColor: lightgrey),
    );
  }
}
