import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Food extends StatelessWidget {
  Food({super.key, this.nameImage,this.nameImage2});
  String? nameImage;
  String? nameImage2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 100,
            margin: EdgeInsets.only(left: 15, bottom: 30),
            width: 100,
            child: Image.asset("images/Rectangle 6.png")),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 55),
          child: Column(
            children: [
              Text(
                "Dapur Ijah Restaurant",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Image.asset("images/like 1.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("999+ |"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Row(
                      children: [
                        Image.asset("images/like 2.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("93+"),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90, top: 10),
                child: Text(
                  r"$99.99",
                  style: TextStyle(color: Color(0xff2ECC71), fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45, bottom: 50),
          child: Row(
            children: [
              Image.asset("$nameImage"),
              SizedBox(
                width: 10,
              ),
              Image.asset("$nameImage2")
            ],
          ),
        )
      ],
    );
  }
}
