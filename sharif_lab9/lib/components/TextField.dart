// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 30, right: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide.none,
          ),
          filled: true,
          labelText: title,
        ),
      ),
    );
  }
}
