import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConMyList extends StatefulWidget {
  ConMyList({super.key});

  @override
  State<ConMyList> createState() => _ConMyListState();
}

class _ConMyListState extends State<ConMyList> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 50, left: 20),
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffECF0F1),
            ),
            child: Image.asset("images/Rectangle 7.png")),
        Padding(
          padding: const EdgeInsets.only(bottom: 55, left: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Text(
                  "Sale off 30% for Pizza",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Color(0xff34495E),
                        ),
                        Text("Apr 10 - Apr 30"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 105),
                child: Text(
                  "11 days left",
                  style: TextStyle(
                      color: Color(0xffE74C3C),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Material(
            child: Transform.scale(
              scale: 2,
              child: Checkbox(
                activeColor: Color(0xffD35400),
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value ?? false;
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
