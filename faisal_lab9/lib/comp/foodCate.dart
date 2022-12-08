import 'package:faisal_lab9/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodcate extends StatelessWidget {
  const foodcate({super.key, required this.img, required this.name});
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            child: Image.asset(img.toString()),
            width: 75,
            // color: gr,
            //
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: gr,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text(name.toString()))
        ],
      ),
    );
  }
}
