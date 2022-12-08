import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Comp/Page1_SignIn/SignIn.dart';
import 'package:sarahalgodah_lab9/Comp/Page2_SignUp/SignUp.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/Homepage.dart';
import 'package:sarahalgodah_lab9/Comp/ChangePass/ChangePassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0, )
      ),
     home: SignIn(),
     getPages: [
      GetPage(name: '/SignIn', page: () => SignIn()),
      GetPage(name: '/SignUp', page: () => SingUp()),
      GetPage(name: '/HomePage', page: () => HomePage()),
      GetPage(name: '/ChangePass', page: () => ChangePassword()),
    
     ],
    );
  }
}
