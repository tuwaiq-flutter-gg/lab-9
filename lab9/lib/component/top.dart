import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopApp extends StatelessWidget {
  TopApp({super.key, this.label,this.onPressed});
  String? label;
  Function()? onPressed = () {};
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            label!,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
