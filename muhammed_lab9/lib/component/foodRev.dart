import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodRev extends StatelessWidget {
  Widget? image,title,sub1,sub2,sub3,finalW;
   foodRev({super.key,this.finalW,this.image,this.sub1,this.sub2,this.sub3,this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.9,
      height: MediaQuery.of(context).size.height*.15,
      child: Row(
        
        children: [
         Container(child:image ,) ,
          Container(
            padding: EdgeInsets.only(left: 15),
            child:Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(child: title,),
              Container(child: sub1,),
              Container(child: sub2,),
              Container(child: sub3,),
            ],
          ) ,) ,
           Container(child:finalW ,) ,
       

        ],

      ),
    );
  }
}