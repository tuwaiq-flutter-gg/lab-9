import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key, this.title, this.onTap});
  final String? title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(title.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000))),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Color(0xff000000),
      ),
      onTap: onTap,
    );
  }
}
