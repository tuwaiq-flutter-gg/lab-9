
import 'package:flutter/material.dart';
import 'package:lab9/component/bodCon.dart';
import 'package:lab9/component/conHome.dart';
import 'package:lab9/component/conHome2.dart';
import 'package:lab9/component/stars.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.only(top: 10, left: 25, right: 25),
          color: Color(0xffECF0F1),
          child: ListTile(
            leading: Icon(
              Icons.search,
              color: Color(0xff000000),
            ),
            title: Text(
              "Search",
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 5),
          child: Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(
                width: 10,
              ),
              Text("9 West 46 Th Street, Najran")
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              ConHome(
                label: "Drink",
                color: Color(0xffECF0F1),
                image: "images/coffee-cup 1.png",
              ),
              SizedBox(
                width: 30,
              ),
              ConHome(
                label: "Food",
                color: Color(0xffD35400),
                image: "images/burger (1) 1.png",
              ),
              SizedBox(
                width: 30,
              ),
              ConHome(
                label: "Cake",
                color: Color(0xffECF0F1),
                image: "images/piece-of-cake 1.png",
              ),
              SizedBox(
                width: 30,
              ),
              ConHome(
                label: "Snacks",
                color: Color(0xffECF0F1),
                image: "images/potato-chips 1.png",
              ),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Text(
              "Food Menu",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 180,
            ),
            Text("view all")
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 25),
                  child: ConHome2(
                    label2: "Burgers",
                    color2: Color(0x303498DB),
                    image2: "images/image (1).png",
                  ),
                ),
                ConHome2(
                  label2: "Pizza",
                  color2: Color(0x309B59B6),
                  image2: "images/image (6).png",
                ),
                SizedBox(
                  width: 20,
                ),
                BadCon(
                  label3: "BBQ",
                  color3: Color(0x303498DB),
                  image3: "images/image (2).png",
                ),
              ],
            )),
        Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: ConHome2(
                    label2: "Fruit",
                    color2: Color(0x309B59B6),
                    image2: "images/image (9).png",
                  ),
                ),
                ConHome2(
                  label2: "Pizza",
                  color2: Color(0x303498DB),
                  image2: "images/image (10).png",
                ),
                SizedBox(
                  width: 20,
                ),
                BadCon(
                  label3: "Noodle",
                  color3: Color(0x309B59B6),
                  image3: "images/image (11).png",
                ),
              ],
            )),
        Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Text(
              "Near Me",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 200,
            ),
            Text("view all")
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset("images/Rectangle 6.png"),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "Dapur Ijah Restaurant",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff34495E),
                      ),
                      Text("13 th Street, 46 W 12th St, NA"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Color(0xff34495E),
                      ),
                      Text("3 min - 1.1 km"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Stars()
              ],
            )
          ],
        )
      ],
    );
  }
}
