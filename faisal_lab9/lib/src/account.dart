// ignore_for_file: prefer_const_constructors

import 'package:faisal_lab9/comp/accountlist.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("images/account.png"),
              SizedBox(
                height: 15,
              ),
              Text("Itoh"),
              SizedBox(
                height: 10,
              ),
              Text("+1 11229382748"),
              accountlist(
                name: "My Profile",
              ),
              accountlist(
                name: "Change Password",
              ),
              accountlist(
                name: "Payment Settings",
              ),
              accountlist(
                name: "My Voucher",
              ),
              accountlist(
                name: "Notification",
              ),
              accountlist(
                name: "About Us",
              ),
              accountlist(
                name: "Contact Us",
              ),
              Expanded(child: butooncomp(title: "save")),
            ],
          ),
        ),
      ),
    );
  }
}
