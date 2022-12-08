import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textF extends StatelessWidget {
  const textF({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 350,
        child: TextField(
            //  controller: nameCO,
            decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide.none),
          filled: true,
          // fillColor: ligr,
          labelText: "    $title",
        )),
      ),
    );
  }
}
