import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridbuilder(),));
}

class gridbuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 70),
         itemBuilder: (ctx,index){
       return const Card(
       child: Center(
       child: Text('Hello'),
       ),
       );
    }
     
   )
   );
  }
  
}