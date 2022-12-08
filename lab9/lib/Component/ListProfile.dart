import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Pages/ChangePass.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title.toString(),style: TextStyle(color: Colors.black,fontSize: 13),),
              IconButton(onPressed: (){
                if(title=="Change Password"){
                  {Navigator.push(context,MaterialPageRoute(builder: (context) => const ChangePass())); }
                }
              }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 13,)),

            ],
          ),
        )
      ],
    );
  }
}