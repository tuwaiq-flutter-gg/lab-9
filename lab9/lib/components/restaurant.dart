import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/components/container.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lab9/components/spacing.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});

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
            width: 130,
            height: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                "images/mainfood.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dapur Ijah Restaurant",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacing(height: 20),
              Row(
                children: [
                  Icon(Icons.location_history),
                  Text(
                    "13 th Street, 46 W 12th St, NY",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.time_to_leave),
                  Text(
                    "3 min - 1.1 km",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              RatingBar.builder(
                itemSize: 15,
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 2),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              )
            ],
          )
        ],
      ),
    );
  }
}
