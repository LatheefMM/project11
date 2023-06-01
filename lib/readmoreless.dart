import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home:readmores() ,));
}

class readmores extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.only(left: 20,right: 20,top: 100,bottom: 100),
       child: Column(
         children: const [
         ReadMoreText(
         'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
         trimLines: 2,
         colorClickableText: Colors.pink,
         trimMode: TrimMode.Line,
         trimCollapsedText: 'Show more',
         trimExpandedText: 'Show less',
         moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
       ),
         SizedBox(height: 50,),
         ReadMoreText(
           'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
           trimLines: 2,
           colorClickableText: Colors.pink,
           trimMode: TrimMode.Line,
           trimCollapsedText: 'Show more',
           trimExpandedText: 'Show less',
           moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
         )
         ],
       ),
     ),
   );
  }
  
}