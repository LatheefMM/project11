import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listcustom(),));
}

class Listcustom extends StatelessWidget {
  var colors = [
      Colors.purple,
      Colors.tealAccent,
    Colors.greenAccent,
    Colors.blue,
    Colors.deepOrange,
    Colors.lightGreenAccent,
    Colors.yellowAccent,
    Colors.black,
    Colors.grey,
    Colors.lightGreen,
    Colors.purple,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.blue,
    Colors.grey,
    Colors.purple,
    Colors.tealAccent,

  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.custom(
         childrenDelegate: SliverChildListDelegate(
       //       [
       //     Card (color: Colors.purple,),
       //     Card (color: Colors.red,),
       //     Card (color: Colors.black12,),
       //     Card (color: Colors.greenAccent,),
       // ]
      List.generate(
          17, (index) => Card(
               color: colors[index],
      child:const Center(
        child: Icon(Icons.add),
      ) ,))
          )),
   );
  }

}