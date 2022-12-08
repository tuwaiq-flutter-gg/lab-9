import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class category extends StatelessWidget {
  const category({super.key, required this.text, required this.icon});
  final String? text;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, bottom: 6),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffECF0F1)),
              child: Image.asset(icon!),
            ),
            Text(text!),
          ],
        ),
      ),
    );
  }
}


class menuitem extends StatelessWidget {
  const menuitem(
      {super.key,
      required this.color,
      required this.text,
      required this.image});
  final Color? color;
  final String? text;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
        // padding: EdgeInsets.only(
        //   right: 7,
        // ),
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color!,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    text!,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 20),
              height: 82,
              width: 100,
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class itemss extends StatelessWidget {
  const itemss({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Column(
                children: [
                  menuitem(
                    text: "Burger",
                    image: "assets/image (1).png",
                    color: Color.fromARGB(106, 52, 152, 219),
                  ),
                  menuitem(
                    text: "Fruit",
                    image: "assets/image (4).png",
                    color: Color.fromARGB(117, 156, 89, 182),
                  ),
                ],
              ),
              Column(
                children: [
                  menuitem(
                    text: "Pizza",
                    image: "assets/image (2).png",
                    color: Color.fromARGB(117, 156, 89, 182),
                  ),
                  menuitem(
                    text: "Sushi",
                    image: "assets/image (5).png",
                    color: Color.fromARGB(106, 52, 152, 219),
                  ),
                ],
              ),
              Column(
                children: [
                  menuitem(
                    text: "BBQ",
                    image: "assets/image (3).png",
                    color: Color.fromARGB(106, 52, 152, 219),
                  ),
                  menuitem(
                    text: "Noodle",
                    image: "assets/image (6).png",
                    color: Color.fromARGB(117, 156, 89, 182),
                  ),
                ],
              ),
              Column(
                children: [
                  menuitem(
                    text: "Burger",
                    image: "assets/image (1).png",
                    color: Color.fromARGB(117, 156, 89, 182),
                  ),
                  menuitem(
                    text: "Fruit",
                    image: "assets/image (4).png",
                    color: Color.fromARGB(106, 52, 152, 219),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
