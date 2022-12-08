import 'package:flutter/material.dart';

class TitleSide extends StatelessWidget {
  TitleSide({super.key, this.onPressed, this.textButtonTitle, this.title});

  Function()? onPressed;
  String? title;
  String? textButtonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.toString(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              textButtonTitle.toString(),
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }
}
