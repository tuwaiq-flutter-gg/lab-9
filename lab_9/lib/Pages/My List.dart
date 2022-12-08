import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';
import 'package:lab_9/Comp/Cutom%20Button.dart';
import 'package:lab_9/Comp/My%20List%20Item.dart';
import 'package:lab_9/Comp/My%20Order%20Item.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Expanded(child: MyListItem()), Icon(Icons.check_circle)],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: MyListItem()),
              Icon(Icons.radio_button_unchecked_outlined)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: MyListItem()),
              Icon(Icons.radio_button_unchecked_outlined)
            ],
          ),
          SizedBox(
            height: 250,
          ),
          CustomButton(
              onPressed: () {},
              title: "Send",
              buttonColor: OrngColor,
              buttonTextColor: Colors.black)
        ],
      ),
    );
  }
}
