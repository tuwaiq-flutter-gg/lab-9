import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodMenuCon extends StatelessWidget {
  const FoodMenuCon({super.key, this.ContainerColor, this.Name, this.pic});
  final ContainerColor;
  final Name;
  final pic;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(12, 10, 3, 5),
        height: 130,
        width: 130,
        decoration: BoxDecoration(
            color: ContainerColor,
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          //
          //
          children: [
            Positioned(
              bottom: 90,
              top: 15,
              right: 47,
              child: Container(
                height: 60,
                width: 70,
                child: Text(
                  Name,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              // top: 20,
              // right: 47,
              child: Container(
                  height: 130,
                  width: 130,
                  child: FittedBox(
                    child: Image.asset(pic),
                    fit: BoxFit.cover,
                  )),
            )
          ],
        ));
  }
}
