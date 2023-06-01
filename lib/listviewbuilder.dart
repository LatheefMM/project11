
import 'package:flutter/material.dart';


class Listviewbuilder extends StatelessWidget{

  var names = ['anu','beena','Aswagosh','sdbvs','dfbgdh','hfhfgdg','fgfhjhhf','fdgdgf','ffsddsee','gftrhdv'];
  var numbers = [7766554433,7766554433,0099887766,0077664422,5544332211,998877665,4455667788,0055332211,7766554433,8877665446];
  var photo = [
    'assets/phonebook.png',
    'assets/ic_launcher.png',
    'assets/img_2.png',
    'assets/img.png',
    'assets/1177497.png',
    'assets/img.png',
    'assets/phonebook.png',
    'assets/phonebook.png',
    'assets/1177497.png',
    'assets/1177497.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list with builder'),),
      body: ListView.builder(itemBuilder: (context,index) {
        return Card(
          color: Colors.amber,
          child: ListTile(
            title: Text(names[index]),
            subtitle: Text('${numbers[index]}'),
            leading: CircleAvatar(backgroundImage: AssetImage('${photo[index]}'),),
        trailing: Wrap(
        children: [
        Icon(Icons.message),
        SizedBox(width: 10),Icon(Icons.phone)],
          ),
          ));
      },
      itemCount: names.length,

      ),
  );
 }
}