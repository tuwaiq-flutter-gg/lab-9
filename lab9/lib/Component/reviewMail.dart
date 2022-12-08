import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewMail extends StatefulWidget {
  const ReviewMail({super.key, this.title, this.title1, this.title2, this.image});
final String? title,title1,title2,image;
  @override
  State<ReviewMail> createState() => _ReviewMailState();
}

class _ReviewMailState extends State<ReviewMail> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
           padding: const EdgeInsets.only(left: 20.0,right: 20),
           child: Row(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [//image
              Container(height: 100,
              width: 100,
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
                        Icon(Icons.location_on,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(widget.title1.toString(),style: TextStyle(color: Color(0xff34495E),fontSize: 10)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.watch_later_outlined,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(widget.title2.toString(),style: TextStyle(color: Color(0xff34495E),fontSize: 10)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("images/star.png"),
                    )
                  ],
                ),
              ),
      
            ],
           ),
         );
  }
}