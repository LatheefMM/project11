import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: sliverex(),));
}

class sliverex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: Text('Flipkart'),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const TextField(decoration: InputDecoration(
                  hintText: 'Search  here',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)
                ),),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context,index)=>Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,borderRadius:BorderRadius.circular(30)
                  ),
                  child: Center(child: Text('Inside sliver list $index',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                ),
              ),
                childCount: 50)
          )
        ],
      ),
    );
  }

}