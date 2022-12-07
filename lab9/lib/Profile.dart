import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Change%20Password.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: Color(0xffECF0F1), fixedSize: Size(300, 30));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "khaled",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("0557408626"),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Profile"),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Change Password"),
                    IconButton(
                        onPressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const Change_Password(),
                            ),
                          );
                        }),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Settings"),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Voucher"),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Notification"),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About Us"),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Contact Us"),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 190,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {},
                  style: style1,
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
