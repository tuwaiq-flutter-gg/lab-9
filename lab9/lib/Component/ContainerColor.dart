import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerColor extends StatefulWidget {
   ContainerColor({super.key,this.child});
Widget? child;
  @override
  State<ContainerColor> createState() => _ContainerColorState();
}

class _ContainerColorState extends State<ContainerColor> {
  @override
  Widget build(BuildContext context) {
    return 
    ListView.builder(
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 100,width: 100,
      decoration: BoxDecoration(
      color: (index % 2 == 0) ? Color(0xff3498DB) : Color(0xff9B59B6),
       borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        title:Container() )
      );
  }
);
  }
}