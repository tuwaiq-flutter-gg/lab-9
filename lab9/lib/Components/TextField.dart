import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldCom extends StatelessWidget {
  const TextFieldCom({super.key, this.HintText, this.Icon});
  final String? HintText;
  final Icon;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon,
        hintText: HintText,
        hintStyle: TextStyle(fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        filled: true,
        fillColor: Color(0xFFECF0F1),
        border: InputBorder.none,
      ),
    );
  }
}
