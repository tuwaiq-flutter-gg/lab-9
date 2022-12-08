import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';
import 'package:lab_9/Comp/Custom%20Profile%20Items.dart';
import 'package:lab_9/Comp/Cutom%20Button.dart';
import 'package:lab_9/Pages/Changing%20Password.dart';
import 'package:lab_9/Pages/Sign%20In.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
          child: ListView(
        children: [
          CircleAvatar(
            radius: 45,
            child: ClipOval(
              child: Image.asset(
                "images/Parrot_0.png",
                fit: BoxFit.fill,
                width: 150,
                height: 150,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Z3ter",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(child: Text("+9665339911")),
          SizedBox(
            height: 30,
          ),
          ProfileItem(item: "My Profile"),
          ProfileItem(
            item: "Change Password",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword()));
            },
          ),
          ProfileItem(item: "Payment Setting"),
          ProfileItem(item: "My Voucher"),
          ProfileItem(item: "Notification"),
          ProfileItem(item: "About us"),
          ProfileItem(item: "Contact us"),
          SizedBox(
            height: 70,
          ),
          CustomButton(
            buttonTextColor: Colors.black,
            title: "Sign Out",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            buttonColor: GrayColor,
          )
        ],
      )),
    );
  }
}
