import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hintText,
    this.icon,
  });
  final String hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: const Color(0xFFECF0F1),
          filled: true,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
          prefixIcon: icon,
        ),
      ),
    );
  }
}
