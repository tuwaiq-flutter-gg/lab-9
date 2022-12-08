import 'package:flutter/material.dart';

import '../component/backgroundIcon.dart';
import '../component/foodRev.dart';
import '../component/myButton.dart';
class orders extends StatelessWidget {
  const orders({super.key});

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

        


              // review
                   foodRev(
                image: Image.asset("images/Rectangle 5.png"),
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Dapur Ijah Restaurant",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                  ),
                ),

              sub1: Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Color(0xff34495E),),
                   Text(
                  " +999 | ",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                 Icon(Icons.thumb_down_alt_outlined,color: Color(0xff34495E),),
                   Text(
                  " 93+",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
sub2: Row(
                children: [
               
                   Text(
                  "\$99.99",
                  style: TextStyle(fontSize: 15 ,color: Color(0xff2ECC71),fontWeight: FontWeight.w500),

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
        backgroundIcon(height: 20, backgroundColor: Color(0xffECF0F1), circular: true, centeredIcon: Icon(Icons.thumb_up_outlined, size: 16, color: Color(0xff34495E),),),
      SizedBox(
        width: 10,
      ),
            backgroundIcon(height: 20, backgroundColor: Color(0xffECF0F1), circular: true, centeredIcon: Icon(Icons.thumb_down_outlined, size: 16, color: Color(0xff34495E),),)
      ],
    ),
  ),
),
              ),


              ///
              ///
              ///
              ///
              ///
             


              // review
                   foodRev(
                image: Image.asset("images/Rectangle 5.png"),
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Dapur Ijah Restaurant",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                  ),
                ),

              sub1: Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Color(0xff34495E),),
                   Text(
                  " +999 | ",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                 Icon(Icons.thumb_down_alt_outlined,color: Color(0xff34495E),),
                   Text(
                  " 93+",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
sub2: Row(
                children: [
               
                   Text(
                  "\$99.99",
                  style: TextStyle(fontSize: 15 ,color: Color(0xff2ECC71),fontWeight: FontWeight.w500),

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
        backgroundIcon(height: 20, backgroundColor: Color(0xffECF0F1), circular: true, centeredIcon: Icon(Icons.thumb_up_outlined, size: 16, color: Color(0xff34495E),),),
      SizedBox(
        width: 10,
      ),
            backgroundIcon(height: 20, backgroundColor: Color(0xffD35400), circular: true, centeredIcon: Icon(Icons.thumb_down_outlined, size: 16, color: Color.fromARGB(255, 255, 255, 255),),)
      ],
    ),
  ),
),
              ),


              // review
                   foodRev(
                image: Image.asset("images/Rectangle 5.png"),
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Dapur Ijah Restaurant",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                  ),
                ),

              sub1: Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Color(0xff34495E),),
                   Text(
                  " +999 | ",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                 Icon(Icons.thumb_down_alt_outlined,color: Color(0xff34495E),),
                   Text(
                  " 93+",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
sub2: Row(
                children: [
               
                   Text(
                  "\$99.99",
                  style: TextStyle(fontSize: 15 ,color: Color(0xff2ECC71),fontWeight: FontWeight.w500),

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
        backgroundIcon(height: 20, backgroundColor: Color(0xffD35400), circular: true, centeredIcon: Icon(Icons.thumb_up_outlined, size: 16, color: Color.fromARGB(255, 255, 255, 255),),),
      SizedBox(
        width: 10,
      ),
            backgroundIcon(height: 20, backgroundColor: Color(0xffECF0F1), circular: true, centeredIcon: Icon(Icons.thumb_down_outlined, size: 16, color: Color(0xff34495E),),)
      ],
    ),
  ),
),
              ),

              
          ],
        ),
    Container(
      margin: const EdgeInsets.only(bottom:9),
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