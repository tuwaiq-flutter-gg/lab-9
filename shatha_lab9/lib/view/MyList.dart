
import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/components/ListItem.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        customAppBar(title: 'My List'),

        const ListItem(check: true),
        const ListItem(check: false),
        const ListItem(check: false),
        
      ],
    );
  }
}