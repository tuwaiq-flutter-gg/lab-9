import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConnectWith extends StatelessWidget {
  const ConnectWith({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return   Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(alignment: Alignment.centerRight,
            child: Text(title.toString(),style: TextStyle(color: Color(0xff34495E),fontSize: 16,))),
          );
  }
}