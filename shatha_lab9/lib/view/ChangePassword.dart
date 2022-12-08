

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';
import 'package:shatha_lab9/view/WelcomePage.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        customAppBar(title: 'change password'),

        customRegularText(text: 'Enter Old Password', verySmall: false),
        customTextField(hint: 'Password'),

        customRegularText(text: 'Create New Password', verySmall: false),
        customTextField(hint: 'Enter New Password'),
        customTextField(hint: 'Re-enter New Password'),

        customButton(type: Buttons.orange, text: 'Save', onPressed: (){Get.offAll(const WelcomePage());})

      ],
    );
  }
}