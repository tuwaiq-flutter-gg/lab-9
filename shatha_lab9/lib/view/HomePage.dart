

import 'package:flutter/material.dart';
import 'package:shatha_lab9/Data/Menu.dart';
import 'package:shatha_lab9/Data/resturants.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';
import 'package:shatha_lab9/components/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            
            // search field
            customTextField(hint: "Search"),
            
            // user location
            Row(
              children: [
                const Icon(Icons.location_on,color: Colors.black,),
                customRegularText(text: "9 West 46 Th Street, New York City", verySmall: true),

              ],
            ),

            // Categories
            SizedBox(
              height: 90,
              
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  Category(type: Buttons.light, text: "Drink"),
                  // const VerticalDivider(width: 15),
                  Category(type: Buttons.orange, text: "Food"),
                  // const VerticalDivider(width: 15),
                  Category(type: Buttons.light, text: "Cake"),
                  // const VerticalDivider(width: 15),
                  Category(type: Buttons.light, text: "Snack"),
                  
                ],
              ),
            ) ,

            // Food Menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customBoldText( text: "Food Menu", size: 18, color: darkText ),
                customRegularText(text: "View all", verySmall: true),
              ],
            ),
            SizedBox(
              height: 280,
              child: GridView.builder(
                itemCount: menu.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) { 
                  return Stack(
                    children: [

                      Container(
                        height: 130,
                        width: 130,
                        
                        decoration: BoxDecoration(
                          color: menu[index]["color"],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: customBoldText(text: menu[index]["name"], color: lightText, size: 14),
                      ),
                      
                      menu[index]["image"],
                    ],
                  );
                 },
                
              ),
            ),

            // Near Me
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customBoldText( text: "Near Me", size: 18, color: darkText ),
                customRegularText(text: "View all", verySmall: true),
              ],
            ),

            const Restaurant(),

          ],
        ),
      );
  }
}