import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Text_f extends StatelessWidget {
   Text_f({super.key,this.varname});
  String? varname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
      child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffECF0F1),
              hintText: varname.toString(),
              hintStyle: TextStyle(fontSize: 18),
              contentPadding: EdgeInsets.fromLTRB(20, 8, 0, 0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)))),
    );
  }
}
