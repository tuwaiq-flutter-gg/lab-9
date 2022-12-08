import 'package:flutter/material.dart';
import 'package:lab9/components/btn.dart';
import 'package:lab9/components/option.dart';
import 'package:lab9/pages/changePasswordPage.dart';
import 'package:lab9/pages/signInPage.dart';
import 'package:lab9/style.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      margin: const EdgeInsets.fromLTRB(30, 100, 30, 0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(150),
              ),
            ),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                "assets/images/person.jpg",
              ),
            ),
          ),
          const Text(
            "Itoh",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "+1 11229382748",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 30,
          ),
          const option(text: "My Profile"),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage(),
                  ),
                );
              },
              child: const option(text: "Change Password")),
          const option(text: "Payment Settings"),
          const option(text: "My Voucher"),
          const option(text: "Notification"),
          const option(text: "About Us"),
          const option(text: "Contact Us"),
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                  (route) => false);
            },
            child: const BTN(
              text: "Sign out",
              backgroundColor: Color(0xFFECF0F1),
              foregroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
