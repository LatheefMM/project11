import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcount(),));
}

class gridcount  extends StatelessWidget {
  var colors = [
    Colors.purple,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.blue,
    Colors.deepOrange,
    Colors.lightGreenAccent,
    Colors.yellowAccent,
    Colors.blueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children:
        List.generate(8, (index) => Container(
          color: colors[index],
          child: Center(
            child: Text('Hello'),
          ),
        ))
      ),
    );
  }
}
