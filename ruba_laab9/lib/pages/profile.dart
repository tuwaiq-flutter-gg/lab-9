import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_laab9/pages/Password.dart';
import 'package:ruba_laab9/pages/Signup.dart';
import 'package:ruba_laab9/pages/signin.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: 
            [Column(
              children: [
        
                CircleAvatar(
                  
                  child: Image.asset("images/Ellipse 6.png" , height: 200,width: 200,)),
                  SizedBox(height: 10,),
                  Text("Ruba", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("0554682715"),
                  SizedBox(height: 10,),
        
                  ListTile(
                   
                   title: Text('My profile'),
                   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () {  },),
                   
                     ),
                     
                  ListTile(
                   
                   title: Text('Change Password'),
                   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Password()));
                             },),
                   
                     ),
                     
                  ListTile(
                   
                   title: Text('Payment setting'),
                   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () { 
                           
                            },),
                   
                     ),
                     
                  ListTile(
                   
                   title: Text('My voucher'),
                   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () {  },),
                   
                     ),
                     
                  ListTile(
                   
                   title: Text('Notification'),
                   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () {  },),
                     ),
                     
                  ListTile(
                   
                   title: Text('About Us'),
                   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () {  },),
                   
                     ),
                     
                  ListTile(
                   
                   title: Text('Contact Us'),
                   trailing:IconButton( icon: Icon(Icons.arrow_forward_ios)
                           , onPressed: () {  },),
                   
                     ),
                     Container(
                            height: 46,
                            width: 380,
                            decoration: BoxDecoration(
                                color: Color(0xffECF0F1),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Signlogin()));
                                },
                                child: Text("Sign Out",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black))),
                          ),
              
        
        
              ],
        
            ),
          ],
        ),
      ),
    );
  }
}