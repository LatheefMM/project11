import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: bottomsheet(),));
}

class bottomsheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Bottom sheet'),
     ),
     body: Center(
       child: GestureDetector(
         onLongPress: ()=> showsheet(context),
         child: Icon(Icons.share,size: 50,color: Colors.blue,),
       ),
     ),
   );
  }

   showsheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) {
      return  Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp),
              title: Text('Whatsapp'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.instagram),
              title: Text('Instagram'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook),
              title: Text('Facebook'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.twitter),
              title: Text('Twitter'),
            ),
          ],
        ),
      );
    });
  }

}