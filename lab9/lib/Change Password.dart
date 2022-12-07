import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/camponant/Text_f.dart';

class Change_Password extends StatelessWidget {
  const Change_Password({super.key});
  

  @override
  Widget build(BuildContext context)
   {final ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: Color(0xffD35400),
      fixedSize: Size(300, 30));
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text(
                            "Change Password",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30),
                    child: Text("Enter Old Password"),
                  ),
                        Text_f(varname: "Password"),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 30),
                          child: Text("Create New Password"),
                        ),
                        Text_f(varname: "Enter New Password"),
                        Text_f(varname: "Re-enter New Password"),
                         SizedBox(
            height: 270,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {},
                  style: style1,
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ),
                ]))));
  }
}
