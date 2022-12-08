import 'package:flutter/material.dart';
import 'package:muhammed_lab9/component/MyTextField.dart';
import 'package:muhammed_lab9/component/backgroundIcon.dart';
import 'package:muhammed_lab9/component/foodMenue.dart';
import 'package:muhammed_lab9/component/foodRev.dart';
import 'package:muhammed_lab9/component/myButton.dart';
import 'package:muhammed_lab9/component/option.dart';

class testing extends StatelessWidget {
  const testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              backgroundIcon(
                height: 70,
                text: Text("Drink"),
                backgroundColor: Color(0xffECF0F1),
                centeredIcon: Icon(
                  Icons.coffee,
                  size: 35,
                ),
              ),
              MyButton(
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
              myCustomTextField(
                text: "Sign in",
              ),
                myCustomTextField(
                text: "Sign in",
                search: true,
              ),
              foodMenu(
                backgroundColor: Color.fromARGB(113, 52, 152, 219),
              ),
              foodMenu(),
              foodRev(
                image: Image.asset("images/Rectangle 6.png"),
                title: Text(
                  "Dapur Ijah Restaurant",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                ),

              sub1: Row(
                children: [
                  Icon(Icons.location_on_outlined,color: Color(0xff34495E),),
                   Text(
                  "13 th Street, 46 W 12th St, NY",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
sub2: Row(
                children: [
                  Icon(Icons.timer_sharp,color: Color(0xff34495E),),
                   Text(
                  "3 min - 1.1 km",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
              sub3: Row(
                children: [
                  Icon(Icons.star,color: Color(0xffFFC107),),
                      Icon(Icons.star,color: Color(0xffFFC107),),
                          Icon(Icons.star,color: Color(0xffFFC107),),
                              Icon(Icons.star,color: Color(0xffFFC107),),
                                  Icon(Icons.star,color: Color(0xffFFC107),),
                  
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



    // my list
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

              option(text: "My Profile",)
            ],
          ),
        ),
      ]),
    );
  }
}
