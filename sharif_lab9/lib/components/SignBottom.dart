// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomSignBottom extends StatelessWidget {
  final String text;
  const CustomSignBottom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(text),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/PngItem_39514 1.png"),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 35,
                        color: Color(0xff3B5998),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        size: 30,
                        color: Colors.red,
                        AssetImage("images/google-plus 1.png"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
