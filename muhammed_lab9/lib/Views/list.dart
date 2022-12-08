import 'package:flutter/material.dart';

import '../component/backgroundIcon.dart';
import '../component/foodRev.dart';
import '../component/myButton.dart';
class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  Text("Review Food",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(width: 1,)
                ],
              ),
            ),

        


                 foodRev(
                image: Image.asset("images/Rectangle 7.png"),
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Sale off 30% for Pizza",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                  ),
                ),

              sub1: Row(
                children: [
                  Icon(Icons.timelapse,color: Color(0xff34495E), size: 20,),
                  SizedBox(width: 3,),
                   Text(
                  "Apr 10 - Apr 30",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                
                ],
              ),
sub2: Row(
                children: [
               
                   Text(
                  "11 days left",
                  style: TextStyle(fontSize: 14 ,color: Color(0xffE74C3C),fontWeight: FontWeight.w500),

                ),

             
             
             
             
                ],
            
              ),
             

finalW: Expanded(
  child: Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.07),
  height: MediaQuery.of(context).size.height*.15,
  

    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        backgroundIcon(height: 25, backgroundColor: Color(0xffD35400), circular: true, centeredIcon: Icon(Icons.check, size: 16, color: Colors.white,),),
      SizedBox(
        width: 10,
      ),
          
      ],
    ),
  ),
),
              ),


                 foodRev(
                image: Image.asset("images/Rectangle 7.png"),
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Sale off 30% for Pizza",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                  ),
                ),

              sub1: Row(
                children: [
                  Icon(Icons.timelapse,color: Color(0xff34495E), size: 20,),
                  SizedBox(width: 3,),
                   Text(
                  "Apr 10 - Apr 30",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                
                ],
              ),
sub2: Row(
                children: [
               
                   Text(
                  "11 days left",
                  style: TextStyle(fontSize: 14 ,color: Color(0xffE74C3C),fontWeight: FontWeight.w500),

                ),

             
             
             
             
                ],
            
              ),
             

finalW: Expanded(
  child: Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.07),
  height: MediaQuery.of(context).size.height*.15,
  

    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        backgroundIcon(height: 25, backgroundColor: Color(0xffD35400), circular: true, centeredIcon: Icon(Icons.check, size: 16, color: Colors.white,),),
      SizedBox(
        width: 10,
      ),
          
      ],
    ),
  ),
),
              ),


                 foodRev(
                image: Image.asset("images/Rectangle 7.png"),
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Sale off 30% for Pizza",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                  ),
                ),

              sub1: Row(
                children: [
                  Icon(Icons.timelapse,color: Color(0xff34495E), size: 20,),
                  SizedBox(width: 3,),
                   Text(
                  "Apr 10 - Apr 30",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                
                ],
              ),
sub2: Row(
                children: [
               
                   Text(
                  "11 days left",
                  style: TextStyle(fontSize: 14 ,color: Color(0xffE74C3C),fontWeight: FontWeight.w500),

                ),

             
             
             
             
                ],
            
              ),
             

finalW: Expanded(
  child: Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.07),
  height: MediaQuery.of(context).size.height*.15,
  

    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        backgroundIcon(height: 25, backgroundColor: Color(0xffECF0F1), circular: true, centeredIcon: Icon(Icons.check, size: 16, color: Color(0xffECF0F1),),),
      SizedBox(
        width: 10,
      ),
          
      ],
    ),
  ),
),
              ),

              
          ],
        ),
    Container(
      margin: EdgeInsets.only(bottom: 8),
      child: MyButton(
                    buttonColor: Color(0xffD35400),
                    borderRadius: 30,
                    height: 50,
                    textWidget: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                    width: MediaQuery.of(context).size.width * .8),
    ),   ],
    );
  }
}