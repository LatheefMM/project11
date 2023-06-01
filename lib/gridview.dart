import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: grid(),));
}

class grid extends StatelessWidget {
  var colors = [
    Colors.purple,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.blue,
    Colors.deepOrange,
    Colors.lightGreenAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid view 1'),
        ),
        body: GridView(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            children: List.generate
              (8, (index) =>
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: colors[index],
                    boxShadow: const[
                      BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(2, 8)
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text('Hello'),
                  ),

                ) //[

              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),),
              // Card(child: Center(child: Text('hello'),),)
              //],
            )
        )
    );
  }
}