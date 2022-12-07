import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.label, this.hint, this.controllerVal, this.icon});
  final String? label;
  final String? hint;
  final Icon? icon;
  final TextEditingController? controllerVal;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.85,
            child: TextFormField(
                controller: controllerVal,
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: icon,
                  hintText: hint,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                      color: Color.fromARGB(125, 0, 0, 0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xffECF0F1),
                )),
          ),
        ],
      ),
    );
  }
}
