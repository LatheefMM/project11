import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_Extend(),
  ));
}
class Grid_Extend extends StatelessWidget{
  var color = [
    Colors.yellowAccent,
    Colors.green,
    Colors.redAccent,
    Colors.orange,
    Colors.brown,
    Colors.pink,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 35,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1,
        children: List.generate(7,
                (index) => Stack(
              children: [
                Container(
                  color: color[index],
                ),
                const Center(
                  child: Icon(
                    Icons.camera_alt,
                    size: 15,
                  ),
                )
              ],
            )),



      ),
    );

  }

}