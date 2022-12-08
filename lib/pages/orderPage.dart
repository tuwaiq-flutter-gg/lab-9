import 'package:flutter/material.dart';
import 'package:lab9/components/btn.dart';
import 'package:lab9/components/orderCard.dart';
import 'package:lab9/style.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Review Food",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            const OrderCard(
              isLiked: true,
            ),
            const SizedBox(
              height: 30,
            ),
            const OrderCard(
              isLiked: false,
            ),
            const SizedBox(
              height: 30,
            ),
            const OrderCard(
              isLiked: null,
            ),
            const SizedBox(
              height: 285,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: InkWell(
                onTap: () {},
                child: const BTN(
                  text: "Save",
                  backgroundColor: orange,
                  foregroundColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
