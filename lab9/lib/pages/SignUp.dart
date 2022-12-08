import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Styles/Colors.dart';
import 'package:lab9/pages/Home.dart';
import 'package:lab9/pages/signIn.dart';

import '../Components/ButtonCom.dart';
import '../Components/TextField.dart';
import '../Components/under.dart';
import 'BNBar.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const lab9())));
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 50,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    child: TextFieldCom(
                      HintText: "Enter Username",
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    child: TextFieldCom(
                      HintText: "Enter Pasword",
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    child: TextFieldCom(
                      HintText: "Re-enter Password",
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    child: ButtonCom(
                      NameColor: Colors.white,
                      Color: orange,
                      OnPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const BNBar())));
                      },
                      ButtonName: "Sign Up",
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  alignment: Alignment.bottomRight,
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 30,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90),
              Under()
            ],
          ),
        ],
      ),
    );
  }
}
