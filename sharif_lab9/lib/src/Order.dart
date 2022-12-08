// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sharif_lab9/components/OrderItem.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Food'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: ListView(
          children: [
            OrderItem(
              like: true,
              unlike: false,
            ),
            OrderItem(
              like: false,
              unlike: true,
            ),
            OrderItem(
              like: false,
              unlike: false,
            ),
          ],
        ),
      ),
    );
  }
}
