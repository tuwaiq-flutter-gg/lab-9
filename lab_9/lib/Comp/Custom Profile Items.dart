import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.item, this.onPressed});
  final String item;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(bottom: 13, top: 13),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Text(
              item,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Icon(Icons.navigate_next_outlined)
        ]),
      ),
    );
  }
}
