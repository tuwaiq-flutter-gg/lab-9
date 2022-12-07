import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BadCon extends StatelessWidget {
  BadCon({super.key, this.label3, this.color3, this.image3});
  String? label3;
  String? image3;
  Color? color3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color3,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    label3!,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    "$image3",
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
