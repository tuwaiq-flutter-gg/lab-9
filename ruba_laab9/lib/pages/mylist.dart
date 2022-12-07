
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_laab9/pages/Home.dart';

class Mylist extends StatefulWidget {
  const Mylist({super.key});

  @override
  State<Mylist> createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
                    Container(
          child: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Home()));
              }, icon: Icon(Icons.arrow_back_ios , color: Colors.black,)),
              SizedBox(width: MediaQuery.of(context).size.width/2-140,),
              Text("Coupons")
            ],
          ),
        ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffECF0F1),),
                 
                  child: Image.asset("images/Rectangle 7.png"),

                ),
                SizedBox(width: 20,),

                Container(child: Column(children: [
                  Text("Sale off 30% for Pizza",style:TextStyle(color: Color(0xff34495E),fontWeight: FontWeight.bold,fontSize: 14),),
                  
                  Row(children: [Icon(Icons.access_time),Text("Apr 10 - Apr 30")],
                  ),
                  Text("11 days left",style: TextStyle(color: Color(0xffE74C3C) , fontSize: 14),),
                
                ],
               
                ),
                
                ),
                SizedBox(width: 150,),
                IconButton(onPressed: (){}, icon: Icon(Icons.check_circle , color: Color(0xffE74C3C)))
              ],
            ),
            SizedBox(width: 40,),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffECF0F1),),
                 
                  child: Image.asset("images/Rectangle 7.png"),

                ),
                SizedBox(width: 20,),

                Container(child: Column(children: [
                  Text("Sale off 30% for Pizza",style:TextStyle(color: Color(0xff34495E),fontWeight: FontWeight.bold,fontSize: 14),),
                  
                  Row(children: [Icon(Icons.access_time),Text("Apr 10 - Apr 30")],
                  ),
                  Text("11 days left",style: TextStyle(color: Color(0xffE74C3C) , fontSize: 14),),
                
                ],
               
                ),
                
                ),
                SizedBox(width: 150,),
                IconButton(onPressed: (){}, icon: Icon(Icons.check_circle , color: Color(0xffECF0F1)))
              ],
            ),
            SizedBox(width: 20,),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffECF0F1),),
                 
                  child: Image.asset("images/Rectangle 7.png"),

                ),
                SizedBox(width: 20,),

                Container(child: Column(children: [
                  Text("Sale off 30% for Pizza",style:TextStyle(color: Color(0xff34495E),fontWeight: FontWeight.bold,fontSize: 14),),
                  
                  Row(children: [Icon(Icons.access_time),Text("Apr 10 - Apr 30")],
                  ),
                  Text("11 days left",style: TextStyle(color: Color(0xffE74C3C) , fontSize: 14),),
                
                ],
               
                ),
                
                ),
                SizedBox(width: 150,),
                IconButton(onPressed: (){}, icon: Icon(Icons.check_circle , color: Color(0xffECF0F1)))
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