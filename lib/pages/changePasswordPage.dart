import 'package:flutter/material.dart';

import 'package:lab9/components/myTextField.dart';

import '../components/btn.dart';
import '../style.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change Password",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                child: const Text(
                  "Enter Old Password",
                  style: TextStyle(color: Color(0xFF34495E)),
                ),
              ),
              const MyTextField(hintText: "Password"),
              Container(
                margin: const EdgeInsets.all(30),
                child: const Text(
                  "Create New Password",
                  style: TextStyle(color: Color(0xFF34495E)),
                ),
              ),
              const MyTextField(hintText: "Enter New Password"),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(hintText: "Re-enter New Password"),
              const SizedBox(
                height: 320,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: InkWell(
                  onTap: () {},
                  child: const BTN(
                    text: "Save",
                    backgroundColor: orange,
                    foregroundColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
