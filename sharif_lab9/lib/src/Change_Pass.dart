// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_lab9/components/Button.dart';
import 'package:sharif_lab9/components/SignBottom.dart';
import 'package:sharif_lab9/components/TextField.dart';
import 'package:sharif_lab9/src/Home.dart';
import 'package:sharif_lab9/src/Sgin_up.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 20, left: 7, top: 100),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Enter Old Password",
                            ),
                          ),
                          CustomTextField(
                            title: "Password",
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 20, left: 7, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Create New Password",
                            ),
                          ),
                          CustomTextField(
                            title: "Enter New Password",
                          ),
                          CustomTextField(
                            title: "Re-enter New Password",
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          CustomButton(
                            title: 'Save',
                            press: () {
                              Get.to(Home());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
