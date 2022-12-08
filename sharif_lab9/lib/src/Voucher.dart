// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sharif_lab9/components/Button.dart';
import 'package:sharif_lab9/components/MyListItem.dart';
import 'package:sharif_lab9/components/OrderItem.dart';

class Vouchers extends StatelessWidget {
  const Vouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List'),
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
            ListItem(
              checked: true,
            ),
            ListItem(
              checked: false,
            ),
            ListItem(
              checked: false,
            ),
            SizedBox(
              height: 150,
            ),
            CustomButton(
              title: 'Send',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
