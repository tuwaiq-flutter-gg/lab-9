import 'package:flutter/material.dart';

class foodMenu extends StatelessWidget {
  Color? backgroundColor=Color.fromARGB(87, 156, 89, 182);
  String? image, name;

   foodMenu({super.key, this.backgroundColor, this.image, this.name}){
    
    
    if(backgroundColor==null) backgroundColor=Color.fromARGB(87, 156, 89, 182);
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
         
        
           
              Container(
                alignment: Alignment.bottomRight,
            
                
          
                  child: Image.asset("$image")),


            Container(
              padding: EdgeInsets.only(top: 10,left: 10),
             height: 130,
      width: 130,
            child: Container(
             
              child: Text("$name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),),),
            
          ),
           
            ],


        
     
      ),
    );
  }
}