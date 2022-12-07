import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/component/profileCom.dart';
import 'package:lab9/pages/passwordPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 80,
            child: Image.asset("images/rr-modified.png"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Rashed",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("+966552903225"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              ProfileCom(
                label: "My Profile",
                onPressed: () {},
                margin1: EdgeInsets.only(left: 235),
              ),
              ProfileCom(
                label: "Change Password",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordPage()));
                },
                margin1: EdgeInsets.only(left: 175),
              ),
              ProfileCom(
                label: "Payment Settings",
                onPressed: () {},
                margin1: EdgeInsets.only(left: 180),
              ),
              ProfileCom(
                label: "My Voucher",
                onPressed: () {},
                margin1: EdgeInsets.only(left: 222),
              ),
              ProfileCom(
                label: "Notification",
                onPressed: () {},
                margin1: EdgeInsets.only(left: 222),
              ),
              ProfileCom(
                label: "About Us",
                onPressed: () {},
                margin1: EdgeInsets.only(left: 240),
              ),
              ProfileCom(
                label: "Contact Us",
                onPressed: () {},
                margin1: EdgeInsets.only(left: 225),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Container(
                  width: 354,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xffECF0F1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
