import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConHome2 extends StatelessWidget {
  ConHome2({super.key, this.label2, this.image2, this.color2});
  String? label2;
  String? image2;
  Color? color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: color2,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        label2!,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Image.asset(
                      "$image2",
                      width: 150,
                      height: 150,
                    ),
                  ],
                )),
          ],
        ));
  }
}
