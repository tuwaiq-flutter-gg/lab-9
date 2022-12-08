import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [Image.asset("images/")]),
          Row(children: [Image.asset("images/")]),
          Row(children: [Image.asset("images/")]),
          ],
      ),
    );
  }
}
