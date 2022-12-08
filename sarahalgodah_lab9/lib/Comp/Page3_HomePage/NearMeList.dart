
import 'package:flutter/material.dart';

class NearMe extends StatelessWidget {
  NearMe(
      {super.key,
      this.restaurantName,
      this.restaurantLocation,
      this.restaurantTime});
  String? restaurantName;
  String? restaurantLocation;
  String? restaurantTime;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurantName.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  restaurantLocation.toString(),
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.grey[800],
                ),
                Text(
                  " ${restaurantTime.toString()}",
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(Icons.star, color: Colors.amber, size: 20),
                Icon(Icons.star, color: Colors.amber, size: 20),
                Icon(Icons.star, color: Colors.amber, size: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
