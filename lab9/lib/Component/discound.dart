import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Discound extends StatefulWidget {
  const Discound({super.key, this.title, this.title1, this.title2, this.image});
final String? title,title1,title2,image;

  @override
  State<Discound> createState() => _DiscoundState();
}

class _DiscoundState extends State<Discound> {
bool value= false;

  @override
  Widget build(BuildContext context) {
    return   
         Padding(
           padding: const EdgeInsets.only(left: 20.0,right: 20),
           child: Row(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 80,
              width: 80,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xffECF0F1)),
                child: Center(child: Image.asset(widget.image.toString()))),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(widget.title.toString(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Icon(Icons.watch_later_outlined,),
                        Text(widget.title1.toString(),style: TextStyle(color: Color(0xff34495E),fontSize: 10)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(widget.title2.toString(),style: TextStyle(color: Colors.red),),
                    )
                  ],
                ),
              ),
              SizedBox(width: 35,),
               Checkbox(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),activeColor: Color(0xffD35400),
          value: this.value,
          onChanged: (value) {
             setState(() {
               this.value = value!;
                });
                },
              ),
            ],
           ),
         );
  }
}