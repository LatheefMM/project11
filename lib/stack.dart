import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackex(),));
}

class Stackex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: [
           Positioned(
               child: Container(color:Colors.green,height: 400)),
           Container(color:Colors.red,height: 300),
           Positioned(top: 400,left: 400,
               child:
               Container(color:Colors.yellow,height: 200)),
           Container(color:Colors.purple,height: 100,),
         ],
       ),
     )
   );

  }

}