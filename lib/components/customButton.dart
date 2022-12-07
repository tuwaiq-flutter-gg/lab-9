import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.title,
      this.fontsize,
      required this.onPressed,
      this.fontColor,
      this.buttonColor});
  final String title;
  final Color? fontColor;
  final Color? buttonColor;
  final double? fontsize;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          //color: Color(0xffD35400),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,

              // backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )),
          child: Text(
            title.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
