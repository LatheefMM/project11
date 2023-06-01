import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class stag2 extends StatelessWidget{
  var photos = [
    'assets/phonebook.png',
    'assets/ic_launcher.png',
    'assets/img_2.png',
    'assets/img.png',
    'assets/1177497.png',
    'assets/img.png',
    'assets/phonebook.png',
    'assets/phonebook.png',
  ];
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: StaggeredGrid.count(crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children:
          List.generate(8, (index) => StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 3,
            child:Card() ,
          ))

      ),
      
    ),
  );
  }
  
}