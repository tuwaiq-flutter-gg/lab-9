import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfiledCom extends StatelessWidget {
  const ProfiledCom({super.key, required this.Name,required this.OnPressedd});
  final String Name;
  final OnPressedd;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPressedd,
      child: Center(
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward_ios,
              )
            ],
          ),
        ),
      ),
    );
  }
}
