

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';
import 'package:shatha_lab9/view/ChangePassword.dart';
import 'package:shatha_lab9/view/WelcomePage.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Image.asset('images/Ellipse 6.png'),

        customBoldText(text: 'Itoh', color: darkText, size: 18),

        customRegularText(text: '+1 11229382748', verySmall: false),

        Row(
          children: [
            TextButton(onPressed: (){}, child: customRegularText(text: 'My Profile', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),

        Row(
          children: [
            TextButton(onPressed: (){Get.to(const ChangePassword());}, child: customRegularText(text: 'Change Password', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),

        Row(
          children: [
            TextButton(onPressed: (){}, child: customRegularText(text: 'Payment Settings', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),

        Row(
          children: [
            TextButton(onPressed: (){}, child: customRegularText(text: 'My Voucher', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),

        Row(
          children: [
            TextButton(onPressed: (){}, child: customRegularText(text: 'Notification', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),

        Row(
          children: [
            TextButton(onPressed: (){}, child: customRegularText(text: 'About Us', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),

        Row(
          children: [
            TextButton(onPressed: (){}, child: customRegularText(text: 'Contact Us', verySmall: false)),
            const Icon(Icons.navigate_next_rounded, color: darkText,)
          ],
        ),


        customButton(type: Buttons.light, text: 'Sign Out', onPressed: (){ Get.offAll( const WelcomePage()); } )

        
      ],
    );
  }
} 