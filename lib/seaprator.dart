import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_separated(),
    theme: ThemeData(
      primarySwatch: Colors.deepOrange
    ),darkTheme: ThemeData.dark(),
  ));
}

class List_with_separated extends StatelessWidget {
  var names = [
    "Amal",
    "sharook",
    "anu",
    "tony",
    "koshi",
    "marvan",
    "raseeela",
    "aswin",
    "Stinil",
    "maggi",
    "Alex"
  ];
  var subtitle = [
    "Okkeyyyy",
    "~Luminar Technolab: http://www.instagram.com",
    "import'package:flutter/materialApp",
    "Messi is not goat ",
    "CR7 is real goat",
    "okey",
    "import'package:flutter/materialApp",
    "Photo",
    "import'package:flutter/materialApp",
    "Azif: Fine",
    "Dai"
  ];
  var photo = ['assets/1177497.png',
    'assets/ic_launcher.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png',
    'assets/img_2.png'

  ];
  //const List_with_separated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(
       // title: const Text("My Contacts"),
       // actions: [
         // const Icon(Icons.search),
          //const Icon(Icons.camera_alt),
      //     PopupMenuButton(itemBuilder: (context) {
      //       return [
      //         PopupMenuItem(
      //           child: Text("New Group"),
      //           onTap: () {},
      //         ),
      //         const PopupMenuItem(
      //           child: Text("New Broadcast"),
      //         ),
      //         const PopupMenuItem(child: Text("Linked devices")),
      //         const PopupMenuItem(
      //           child: Text("Starred messages"),
      //         ),
      //         const PopupMenuItem(child: Text("Payments")),
      //         const PopupMenuItem(child: Text("Settings"))
      //       ];
      //     })
      //   ],
      // ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(photo[index]),),
                title: Text(names[index]),
                subtitle: Text(subtitle[index]),
              ),
            );
          },
          itemCount: names.length,),
      ),
    );
  }
}