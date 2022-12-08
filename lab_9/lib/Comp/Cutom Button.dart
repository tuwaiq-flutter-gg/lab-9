import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      this.onPressed,
      required this.buttonColor, required this.buttonTextColor});
  final String title;
  final Function()? onPressed;
  final Color buttonColor;
  final Color buttonTextColor;
  //Color buttonColor = OrngColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: Size(200, 35),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: buttonTextColor),
          ),
        ),
      ),
    );
  }
}
