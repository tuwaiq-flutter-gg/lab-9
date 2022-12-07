import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/customButton.dart';
import 'package:hadeel_lab9/components/settingsTile.dart';
import 'package:hadeel_lab9/views/SignIn.dart';
import 'package:hadeel_lab9/views/changePassword.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Column(
            children: [
              Container(
                width: 150,
                height: 150,
                child: CircleAvatar(
                  child: Image.asset("images/Ellipse 6.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Itoh",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000))),
              SizedBox(
                height: 10,
              ),
              Text("+1 11229382748",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff000000)))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Column(
            children: [
              SettingsTile(
                title: "My Profile",
              ),
              SettingsTile(
                title: "Change Password",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePassword()));
                },
              ),
              SettingsTile(
                title: "Payment Settings",
              ),
              SettingsTile(
                title: "My Voucher",
              ),
              SettingsTile(
                title: "Notification",
              ),
              SettingsTile(
                title: "About Us",
              ),
              SettingsTile(
                title: "Contact Us",
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customButton(
                title: "Sign Out",
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                      (route) => false);
                },
                buttonColor: Color(0xffECF0F1),
                fontColor: Color(0xff000000),
              )
            ],
          )
        ],
      ),
    );
  }
}
