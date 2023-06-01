import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expaned(),));
}

class expaned extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     ),
     body: Container(
       height: MediaQuery.of(context).size.height,
       color: Colors.pinkAccent,
       child:const Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Hello',selectionColor: Colors.amberAccent,),
           Icon(Icons.account_balance),
           Expanded(child:Image(image:AssetImage('assets/img.png'),fit: BoxFit.contain,))
         ],
       ),
     ),
   );
  }

}