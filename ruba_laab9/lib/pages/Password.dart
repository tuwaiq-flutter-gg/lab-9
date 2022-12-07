import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_laab9/pages/profile.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: Center(child:Column(children: [
        Container(
          child: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => profile()));
              }, icon: Icon(Icons.arrow_back_ios , color: Colors.black,)),
              SizedBox(width: MediaQuery.of(context).size.width/2-140,),
              Text("Change Password")
            ],
          ),
        ),
        SizedBox(height: 40,),
        
        Container(
          margin: EdgeInsets.only(right: 250),
          child: Text("Enter Old Password",style: TextStyle(color: Color(0xff34495E)),),),
        Container(
                        height: 61,
                        width: 380,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              filled: true,
                              labelText: "Enter Old password",
                              fillColor: Color(0xffECF0F1)),
                        ),
                      ),
                       Container(
                        
          margin: EdgeInsets.only(right: 250),
          child: Text("create new password",style: TextStyle(color: Color(0xff34495E)),),),
        Container(
                        height: 61,
                        width: 380,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              filled: true,
                              labelText: "Enter new password",
                              fillColor: Color(0xffECF0F1)),
                        ),
                      ),
                      Container(
                        height: 61,
                        width: 380,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              filled: true,
                              labelText: "Confirm new password",
                              fillColor: Color(0xffECF0F1)),
                        ),
                      ),
                      SizedBox(height: 100,),
                      Container(
                        
                        height: 46,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Color(0xffD35400),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => profile()));
                            },
                            child: Text("save",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      ),
      ],)),
    );
  }
}