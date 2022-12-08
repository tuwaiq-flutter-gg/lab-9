import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:lap9/screen/signin.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 215,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 74,
                          child: Image.asset('assets/Ellipse 6.png'),
                        ),
                        Text('Itoh',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Text('+1 11229382748')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                butomm(
                  text: 'My Profile',
                ),
                butomm(
                  text: 'Change Password',
                ),
                butomm(
                  text: 'Payment Settings',
                ),
                butomm(
                  text: 'My Voucher',
                ),
                butomm(
                  text: 'Notification',
                ),
                butomm(
                  text: 'About us',
                ),
                butomm(
                  text: 'Contact us',
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => login()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffECF0F1),
                    ),
                    child: Center(
                      child: Text(
                        'Sign out',
                        style: TextStyle(
                            fontSize: 23,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class butomm extends StatelessWidget {
  const butomm({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w900),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(AssetImage('assets/chevron-right.png')),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
