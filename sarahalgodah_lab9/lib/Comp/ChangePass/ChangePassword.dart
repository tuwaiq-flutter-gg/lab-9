import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Custom/CustmTextField.dart';
import 'package:sarahalgodah_lab9/Custom/CustomButton.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Change Password",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(dPadding),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Enter Old Password")),
                    CustmTextField(
                      hintText: "Password",
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Creat New Password")),
                    CustmTextField(
                      hintText: "Enter New Password",
                    ),
                    CustmTextField(
                      hintText: "Re-enter New Password",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: CustomButton(
                  buttonColor: primaryColor,
                  buttonText: "Save",
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
