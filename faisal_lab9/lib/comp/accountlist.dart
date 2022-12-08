import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class accountlist extends StatelessWidget {
  const accountlist({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name.toString(),
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
