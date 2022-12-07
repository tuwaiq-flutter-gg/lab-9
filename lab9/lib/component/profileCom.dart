import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileCom extends StatelessWidget {
  ProfileCom({super.key, this.label, this.onPressed, this.margin1});
  String? label;
  Function()? onPressed = () {};
  EdgeInsetsGeometry? margin1 = EdgeInsets.only();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label!,
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Container(
          margin: margin1,
          child: IconButton(
            onPressed: (onPressed),
            icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ],
    );
  }
}
