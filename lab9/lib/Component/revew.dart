import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class review extends StatefulWidget {
  const review({super.key, this.title, this.title1, this.title2, this.image, this.title3,});
final String? title,title1,title2,image,title3;

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
bool value= false;

  @override
  Widget build(BuildContext context) {
    return   
         Padding(
           padding: const EdgeInsets.only(left: 20.0,right: 15),
           child: Row(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [//////////////image
              Container(height: 80,
              width: 80,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xffECF0F1)),
                child: Center(child: Image.asset(widget.image.toString()))),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(///////////////text
                  mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:5.0),
                      child: Text(widget.title.toString(),style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold)),
                    ),
                    Row(//////////2icon and text
                      children: [
                        // Image.asset("images/like.png",scale: .9,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down_off_alt_sharp),),
                        Text(widget.title1.toString(),style: TextStyle(color: Color(0xff34495E),fontSize: 10)),
                         IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined),),
                        // Image.asset("images/like (1).png",scale: .9, ),
                        Text(widget.title2.toString(),style: TextStyle(color: Color(0xff34495E),fontSize: 10)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0),
                      child: Text(widget.title3.toString(),style: TextStyle(color: Colors.green),),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10,),
               Row(
                children: [
                 IconButton(onPressed: (){
                  if(IconButton=="images/like (1).png"){Color(0xffD35400);}
                 }, icon: Image.asset("images/like (1).png",scale: .9),),
                   IconButton(onPressed: (){}, icon: Image.asset("images/like.png",scale: .9,),),
                ],
               )
            ],
           ),
         );
  }
}