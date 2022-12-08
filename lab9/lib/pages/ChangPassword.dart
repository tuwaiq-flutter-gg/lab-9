import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Components/ButtonCom.dart';
import 'package:lab9/Components/TextField.dart';
import 'package:lab9/Styles/Colors.dart';
import 'package:lab9/pages/BNBar.dart';
import 'package:lab9/pages/Profile.dart';

import '../Components/AppBarCom.dart';

class ChangPassword extends StatelessWidget {
  const ChangPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCom(
          Title: "Change Password",
          OnPr: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) =>  BNBar())));
          }),
      body: ListView(children: [
        SizedBox(
          height: 40,
        ),
        Center(
          child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 50,
              child: Text(
                "Enter Old Password",
                style: TextStyle(
                    color: Color(0xFF34495E),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
        ),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child: TextFieldCom(
                HintText: "Password",
              )),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 50,
              child: Text(
                "Create New Password",
                style: TextStyle(
                    color: Color(0xFF34495E),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
        ),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child: TextFieldCom(
                HintText: "Enter New Password",
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child: TextFieldCom(
                HintText: "Re-enter New Password",
              )),
        ),
        SizedBox(
          height: 250,
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 45,
            child: ButtonCom(
              NameColor: Colors.white,
              Color: orange,
              OnPressed: () {},
              ButtonName: "Save",
            ),
          ),
        )
      ]),
    );
  }
}
