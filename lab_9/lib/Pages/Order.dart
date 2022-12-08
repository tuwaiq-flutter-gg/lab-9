import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';
import 'package:lab_9/Comp/Cutom%20Button.dart';
import 'package:lab_9/Comp/My%20Order%20Item.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: MyOrderItem()),
              Row(
                children: [
                  Icon(
                    color: OrngColor,
                    Icons.thumb_up_alt_outlined,
                  ),
                  Icon(
                    Icons.thumb_down_alt_outlined,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: MyOrderItem()),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                  ),
                  Icon(
                    color: OrngColor,
                    Icons.thumb_down_alt_outlined,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: MyOrderItem()),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                  ),
                  Icon(
                    Icons.thumb_down_alt_outlined,
                  ),
                ],
              )
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
