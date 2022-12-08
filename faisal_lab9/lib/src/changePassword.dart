import 'package:faisal_lab9/comp/Title.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:faisal_lab9/comp/textfield.dart';
import 'package:faisal_lab9/src/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class changepass extends StatelessWidget {
  const changepass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeTitle(
              title: "Enter Old Password",
              isBold: false,
            ),
            textF(title: "Password"),
            // SizedBox(
            //   height: 25,
            // ),
            homeTitle(
              title: "Create New Password",
              isBold: false,
            ),

            textF(title: "Enter New Password"),
            textF(title: "Re-enter New Password"),

            butooncomp(
              title: "Save",
              onpress: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
