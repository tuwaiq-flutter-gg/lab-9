import 'package:flutter/material.dart';

class TextF extends StatefulWidget {
  TextF({super.key, this.hint});
  String? hint;
  TextEditingController? controller = new TextEditingController();
  @override
  State<TextF> createState() => _TextF();
}

class _TextF extends State<TextF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 60,
      child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            filled: true,
            fillColor: Color(0xffECF0F1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
          )),
    );
  }
}
