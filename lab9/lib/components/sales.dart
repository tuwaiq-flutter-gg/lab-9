import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/components/container.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lab9/components/spacing.dart';

class SalesList extends StatelessWidget {
  const SalesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Containers(
            width: 80,
            height: 80,
            child: Image.asset("images/sales.png"),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sale off 30% for Pizza",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacing(height: 5),
              Row(
                children: [
                  Icon(Icons.access_time_filled),
                  Text(
                    "Apr 10 - Apr 30",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "11 days left",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
  }
}
