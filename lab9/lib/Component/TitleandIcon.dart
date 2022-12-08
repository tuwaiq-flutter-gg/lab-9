import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleIcon extends StatelessWidget {
  const TitleIcon({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return  
    Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black, onPressed: () { },),
          SizedBox(width: 100,),
          Align(child: Text(title.toString(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),alignment: Alignment.center,)
          ],
          );
  }
}