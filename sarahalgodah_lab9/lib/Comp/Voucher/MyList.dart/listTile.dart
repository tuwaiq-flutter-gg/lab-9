

import 'package:flutter/material.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class ListTileOfVocher extends StatefulWidget {
  ListTileOfVocher({super.key,
       this.title,
     this.date,
     this.daylift,
    required this.isChecked,
     this.image,
    });


   final String? title;
  final String? date;  
  final String? daylift; 
  bool isChecked = false; 
  String? image;

  @override
  State<ListTileOfVocher> createState() => _ListTileOfVocherState();
}

class _ListTileOfVocherState extends State<ListTileOfVocher> {
  @override
  Widget build(BuildContext context) {
    return 
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only( bottom: 5.0),
                    child: Text(widget.title.toString(), style: TextStyle(color: Color(0xFF34495E, ), fontWeight: FontWeight.bold, fontSize: 15),),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(widget.date.toString(), style: TextStyle(color: Color(0xFF34495E)),),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(widget.daylift.toString(), style: TextStyle(color: Colors.red),),
                        ))
                    ],
                  ),

                  trailing: Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      activeColor: primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                              value:widget.isChecked,
                              onChanged: (v) {
                                setState(() {
                               widget.isChecked = v!;
                                });
                              },
                            ),
                  ),


                  leading: Transform.scale(
                    scale: 1.2,
                    child: Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                        color: lightFaildColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(widget.image.toString())),
                  ) ,
                
    );
  }
}
