
import 'package:flutter/material.dart';

class ProfileBotton extends StatelessWidget {
   ProfileBotton({
    super.key,
    this.onTap,
    this.buttonTitle

  });
  Function()? onTap;
  String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(buttonTitle.toString()),
          Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 20,)
        ],
      ),
    );
  }
}
