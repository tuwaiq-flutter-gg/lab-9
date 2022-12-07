import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_laab9/pages/Home.dart';

class review extends StatefulWidget {
  const review({super.key});

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
                    Container(
                      
          child: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Home()));
              }, icon: Icon(Icons.arrow_back_ios , color: Colors.black,)),
              SizedBox(width: MediaQuery.of(context).size.width/2-140,),
              Text("review"),
            ],
          ),
        ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffECF0F1),),
                 
                  child: Image.asset("images/Rectangle 6.png"),

                ),
                SizedBox(width: 20,),

                Container(child: Column(children: [
                  Text("Dogmie jagong tutung",style:TextStyle(color: Color(0xff34495E),fontWeight: FontWeight.bold,fontSize: 14),),
                  
                  Row(children: [Icon(Icons.thumb_up_alt_outlined),Text("  999+ | "),Icon(Icons.thumb_down_alt_outlined),Text("  93+")],
                  ),
                  Text("\$99.99",style: TextStyle(color: Color(0xff2ECC71) , fontSize: 14),),
                
                ],
               
                ),
                
                ),
                 SizedBox(width: 120,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down_off_alt_sharp , color: Color(0xffECF0F1))),
                   IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined , color: Color(0xffE74C3C))),

                  ],
                )
              ],
            ),
            SizedBox(width: 40,),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffECF0F1),),
                 
                  child: Image.asset("images/Rectangle 6.png"),

                ),
                SizedBox(width: 20,),

                Container(child: Column(children: [
                  Text("Dogmie jagong tutung",style:TextStyle(color: Color(0xff34495E),fontWeight: FontWeight.bold,fontSize: 14),),
                  
                 Row(children: [Icon(Icons.thumb_up_alt_outlined),Text("  999+ | "),Icon(Icons.thumb_down_alt_outlined),Text("  93+")],
                  ),
                 Text("\$99.99",style: TextStyle(color: Color(0xff2ECC71) , fontSize: 14),),
                
                ],
               
                ),
                
                ),
                 SizedBox(width: 120,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down_off_alt_sharp , color: Color(0xffE74C3C))),
                   IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined , color: Color(0xffECF0F1))),

                  ],
                )
              ],
            ),
            SizedBox(width: 20,),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffECF0F1),),
                 
                  child: Image.asset("images/Rectangle 6.png"),

                ),
                SizedBox(width: 20,),

                Container(child: Column(children: [
                  Text("Dogmie jagong tutung",style:TextStyle(color: Color(0xff34495E),fontWeight: FontWeight.bold,fontSize: 14),),
                  
                  Row(children: [Icon(Icons.thumb_up_alt_outlined),Text("  999+ | "),Icon(Icons.thumb_down_alt_outlined),Text("  93+")],
                  ),
                  Text("\$99.99",style: TextStyle(color: Color(0xff2ECC71) , fontSize: 14),),
                
                ],
               
                ),
                
                ),
                SizedBox(width: 120,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down_off_alt_sharp , color: Color(0xffECF0F1))),
                   IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined , color: Color(0xffECF0F1))),

                  ],
                )
              ],
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
                                  builder: (context) => Home()));
                            },
                            child: Text("save",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      ),
            
          ],
        ),
      ),
    );
  }
}