import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contaner_Home extends StatelessWidget {
const  Contaner_Home({super.key, required this.Img, required this.name_contaner});
 final String Img;
 final String name_contaner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 91,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffECF0F1)),
                  child: Image.asset(Img.toString()),
                ),
              ),
              Text(name_contaner.toString())
            ],
          )
        ],
      ),
    );
  }
}
class Contener2 extends StatelessWidget {
  const Contener2({super.key, required this.Img});
final String Img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffECF0F1)),
                  child: Image.asset(Img.toString()),
                ),
              ),
              
            ],
          )
        ],
      ),
    );;
  }
}
