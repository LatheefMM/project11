import 'package:flutter/material.dart';
import 'package:untitled1/seaprator.dart';

import 'Homepage.dart';
import 'gridwithbuilder.dart';
import 'loginpage.dart';

void main(){
  runApp(MaterialApp(home: bottom_bar()));
}
class bottom_bar  extends StatefulWidget {


  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int index = 0;

  var screens = [
    gridbuilder(),
    List_with_separated(),
    Homepage(),
    Loginpage(),

  ];
  @override
  Widget build(BuildContext context) {
return
 Scaffold(
     appBar: AppBar(
       title: Text('Bottom navigation bar'),
     ),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.shifting,
       backgroundColor: Colors.purple,
       selectedItemColor: Colors.lightGreen,
       onTap: (tapindex) {
         setState(() {
           index = tapindex;
         });
       },
       currentIndex: 0,
       items:[
         BottomNavigationBarItem(
             backgroundColor: Colors.red,icon: Icon(Icons.account_circle_rounded),label: 'profile'),
         BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'profile'),
         BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'profile'),
         BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'profile'),
       ],
     ),
      body: Center(
        child: screens[index],
      ),
    );}


}