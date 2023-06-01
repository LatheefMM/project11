import 'package:flutter/material.dart';
import 'package:untitled1/seaprator.dart';
import 'package:untitled1/stack.dart';

import 'Homepage.dart';
import 'listviewbuilder.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: whatsapp()));
}
class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 4,
       child: Scaffold(
         appBar: AppBar(
           actions: [
             Icon(Icons.camera_alt),
             SizedBox(
               width: 20,
             ),
             Icon(Icons.search),
             PopupMenuButton(itemBuilder: (context) {
               return [
                 PopupMenuItem(
                   child: Text("New Group"),
                   onTap: () {},
                 ),
                 const PopupMenuItem(
                   child: Text("New Broadcast"),
                 ),
                 const PopupMenuItem(child: Text("Linked devices")),
                 const PopupMenuItem(
                   child: Text("Starred messages"),
                 ),
                 const PopupMenuItem(child: Text("Payments")),
                 const PopupMenuItem(child: Text("Settings"))
               ];
             })
           ],
           title: Text('Whatsapp'),
           bottom: TabBar(
              isScrollable: true,
               indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.all(1),
               tabs: [
             SizedBox(
               width: MediaQuery.of(context).size.width *.1,
                 child: Tab(icon: Icon(Icons.people_alt_rounded),)),
             SizedBox(
               width: MediaQuery.of(context).size.width *.3,
                 child: Tab(text: 'chats',)),
             SizedBox(
               width: MediaQuery.of(context).size.width *.3,
                 child: Tab(text: 'Status',)),
             SizedBox(
               width: MediaQuery.of(context).size.width *.3,
                 child: Tab(text: 'Calls',)),
           ]),

         ),
         body: TabBarView(children: [
           List_with_separated(),
           Listviewbuilder(),
           Stackex(),
           Homepage(),
         ]),
       ));
  }

}