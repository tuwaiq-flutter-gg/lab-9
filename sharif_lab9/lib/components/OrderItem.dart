// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final bool like;
  final bool unlike;

  const OrderItem({super.key, required this.like, required this.unlike});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/Rectangle 6.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dogmie jagong tutung',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  const Text(
                    '  999+  |   ',
                  ),
                  Icon(Icons.thumb_down_alt_outlined),
                  const Text(
                    '  93+',
                  ),
                ],
              ),
              const Text(
                '\$99.99',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: unlike ? Color(0xffD35400) : Colors.white,
                ),
                child: Icon(Icons.thumb_down_alt_outlined),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 60,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: like ? Color(0xffD35400) : Colors.white,
                ),
                child: Icon(Icons.thumb_up_alt_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
