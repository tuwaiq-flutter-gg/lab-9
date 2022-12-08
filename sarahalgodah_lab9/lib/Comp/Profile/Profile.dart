import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Comp/Profile/ProfileBotton.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(dPadding),
          child: Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 60.0, backgroundImage: AssetImage("images/2.jpg")),
                Text(
                  "\nSarah A\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("+966 500501517\n"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: dPadding),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.33,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileBotton(
                          buttonTitle: "My Profile",
                          onTap: () {},
                        ),
                        ProfileBotton(
                          buttonTitle: "Change Password",
                          onTap: () {
                            Get.toNamed("/ChangePass");
                          },
                        ),
                        ProfileBotton(
                          buttonTitle: "Payment Settings",
                          onTap: () {},
                        ),
                        ProfileBotton(
                          buttonTitle: "My Voucher",
                          onTap: () {},
                        ),
                        ProfileBotton(
                          buttonTitle: "Notification",
                          onTap: () {},
                        ),
                        ProfileBotton(
                          buttonTitle: "About Us",
                          onTap: () {},
                        ),
                        ProfileBotton(
                          buttonTitle: "Contact Us",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size.fromHeight(50),
                      backgroundColor: lightFaildColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'HomePage');
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
