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
    Colors.indigo,
    Colors.redAccent,
    Colors.indigo,
    Colors.teal,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid view 1'),
        ),
        body: GridView(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            semanticChildCount: 12,
            children: List.generate
              (12, (index) =>
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: colors[index],
                    boxShadow: const[
                      BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(2, 10)
                      ),
                    ],
                  ),
                  child:   Center(
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