import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expansionex(),));
}

class expansionex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text('Expansion tile'),
   ),
   body:const ExpansionTile(
     title: Text('colors'),
     subtitle: Text('Expand to view more'),
     children: [
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.pink,),
         title: Text('pink'),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.blue,),
         title: Text('blue'),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.yellowAccent,),
         title: Text('yellow'),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.deepOrange,),
         title: Text('orange'),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.indigoAccent,),
         title: Text('indigo'),
       )
     ],
   ),
 );
  }

}