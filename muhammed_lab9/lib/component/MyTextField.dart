import 'package:flutter/material.dart';
class myCustomTextField extends StatefulWidget {
  String? text;
  bool? search;
   myCustomTextField({super.key, this.text, this.search});

  @override
  State<myCustomTextField> createState() => _myCustomTextFieldState();
}

class _myCustomTextFieldState extends State<myCustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.8,
      height: 50,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffCADEDE),
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(

        
        decoration:  InputDecoration(
          prefixIcon: widget.search==true? Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(
            Icons.search,
          ),):Text(""),
          enabledBorder:InputBorder.none,
      filled: true,
      fillColor: Color(0xffCADEDE),
      hintText: "${widget.text}",
        ),
      ),
    );





// TextFormField(
      
//   decoration:  InputDecoration(
//     // contentPadding: EdgeInsets.all(100),
//     filled: true,
//     fillColor: Color(0xffCADEDE),
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(100),
//         borderSide: BorderSide(color:Color.fromARGB(255, 228, 20, 20), width: 5),
//     ),
//     labelText: '${widget.text}',
//   ),
// );
  }
}