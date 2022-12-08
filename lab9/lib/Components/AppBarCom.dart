import 'package:flutter/material.dart';

class AppBarCom extends StatelessWidget with PreferredSizeWidget {
  AppBarCom({
    super.key,
    this.Title, this.OnPr,
  });
  final String? Title;
  final OnPr;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: MaterialButton(
          padding: EdgeInsets.all(1),
          onPressed: OnPr,
          child: Icon(Icons.arrow_back_ios_new)),
      //
      centerTitle: true,
      title: Text(
        Title.toString(),
        style: TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }

  //
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
