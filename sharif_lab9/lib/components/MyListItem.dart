//
//MyListItem

// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final bool checked;

  const ListItem({super.key, required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffECF0F1),
            ),
            child: Image.asset("images/Rectangle 7.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sale off 30% for Pizza',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.timer_outlined),
                  const Text(
                    '  Apr 10 - Apr 30',
                  ),
                ],
              ),
              const Text(
                '11 days left',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Container(
            height: 60,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: checked ? Color(0xffD35400) : Color(0xffECF0F1),
            ),
            child: Icon(
              color: checked ? Colors.white : Color(0xffECF0F1),
              Icons.check,
            ),
          ),
        ],
      ),
    );
  }
}
