import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: staggrid(),));
}

class staggrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: StaggeredGrid.count(crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 5,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: Container(
                      color: Colors.indigo,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: Container(
                      color: Colors.purpleAccent,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Container(
                      color: Colors.lightBlueAccent,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 3,
                    child: Container(
                      color: Colors.lightGreen,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 3,
                    child: Container(
                      color: Colors.amber,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 3,
                    child: Container(
                      color: Colors.yellowAccent,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 3,
                    child: Container(
                      color: Colors.pink,
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    )
                )









              ]

          ),
        )
    );
  }
}