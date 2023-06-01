import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My contacts'),
      ),
      body: ListView(
        children: [
          Card(
              color: Colors.lightGreen,
              child: ListTile(
                title: Text('anu'),
                subtitle: Text('5544332211'),
                leading: Image.asset('assets/ic_launcher.png'),
                trailing: Wrap(
                  children: [Icon(Icons.message),
                    SizedBox(width: 10),Icon(Icons.phone)],
                ),
              ),
          ),
          Card(
            color: Colors.deepOrange,
              child:ListTile(
                  title:Text('bibin'),
              subtitle:Text('776655443'),
          leading: Image.asset('assets/ic_launcher.png'),
          trailing: Wrap(
            children: [Icon(Icons.message),
            SizedBox(width: 10),Icon(Icons.phone)],
          ),
          ),
    ),
          Card
            (color: Colors.orangeAccent,
              child:ListTile(
                title:Text('ciya'),
              subtitle: Text('4433552233'),
              leading: Image.asset('assets/ic_launcher.png'),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 10),Icon(Icons.phone)],
              ),
              ),
          ),
          Card(color: Colors.greenAccent,
            child:ListTile(
              title:Text('sarovar'),
              subtitle: Text('8866554433'),
              leading: Image.asset('assets/ic_launcher.png'),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 10),Icon(Icons.phone)],
              ),
            ),
          ),

          Card(color: Colors.indigoAccent,
            child:ListTile(
              title:Text('ayyappan'),
              subtitle: Text('8888776655'),
              leading: Image.asset('assets/ic_launcher.png'),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 10),Icon(Icons.phone)],
              ),
            ),
          ),
          Card(
            color: Colors.deepOrange,
            child: ListTile(
              title: Text('latheef'),
              subtitle: Text('7766554433'),
              leading: Image.asset('assets/ic_launcher.png'),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(width: 11),Icon(Icons.phone)],
              ),
            ),
          )
        ],
      ),
    );
  }
}
