import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';
import 'package:lab_9/Comp/Custom%20TextFiled.dart';
import 'package:lab_9/Comp/Cutom%20Button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Enter old Password"),
              SizedBox(
                height: 20,
              ),
              CustomTextFiled(title: "Password", textFiledIcon: Icon(null)),
              SizedBox(
                height: 30,
              ),
              Text("Create New Password"),
              SizedBox(
                height: 30,
              ),
              CustomTextFiled(
                  title: "Enter new Password", textFiledIcon: Icon(null)),
              SizedBox(
                height: 20,
              ),
              CustomTextFiled(
                  title: "Re-enter New Password", textFiledIcon: Icon(null)),
              SizedBox(
                height: 400,
              ),
              Container(
                child: CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title: "Save",
                    buttonColor: OrngColor,
                    buttonTextColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
