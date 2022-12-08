import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Components/ProfiledCom.dart';
import 'package:lab9/Styles/Colors.dart';
import 'package:lab9/pages/BNBar.dart';
import 'package:lab9/pages/BNBarPass.dart';
import 'package:lab9/pages/ChangPassword.dart';
import 'package:lab9/pages/signIn.dart';

import '../Components/ButtonCom.dart';
import '../main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        SizedBox(
          height: 40,
        ),
        Container(
          height: 150,
          width: 150,
          child: FittedBox(child: Image.asset("images/ava.png")),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "Itoh",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "+1 11229382748",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        //////////////////////
        SizedBox(
          height: 30,
        ),
        //
        ProfiledCom(Name: "My Profile", OnPressedd: () {}),
        SizedBox(
          height: 5,
        ),
        ProfiledCom(
            Name: "Change Password",
            OnPressedd: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => BNBarPass())));
              // setState(() {
              //   Pages[3] = const ChangPassword();
              // });
            }),
        SizedBox(
          height: 5,
        ),
        ProfiledCom(Name: "Payment Settings", OnPressedd: () {}),
        SizedBox(
          height: 5,
        ),
        ProfiledCom(Name: "My Voucher", OnPressedd: () {}),
        SizedBox(
          height: 5,
        ),
        ProfiledCom(Name: "Notification", OnPressedd: () {}),
        SizedBox(
          height: 5,
        ),
        ProfiledCom(Name: "About Us", OnPressedd: () {}),
        SizedBox(
          height: 5,
        ),
        ProfiledCom(Name: "Contact Us", OnPressedd: () {}),
        SizedBox(
          height: 20,
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 45,
            child: ButtonCom(
              NameColor: Colors.black,
              Color: lightGray,
              OnPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => const lab9())));
              },
              ButtonName: "Sign Out",
            ),
          ),
        )

        //
      ]),
    );
  }
}
