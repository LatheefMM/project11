import 'package:flutter/material.dart';
import 'Homepage.dart';

class Loginpage extends StatelessWidget{
  String username = 'admin';
  String password = 'abc123';
  ///controller of fetching data from textfield
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/ic_launcher.png'),
            Padding(
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'User Name',
                  labelText: 'username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)
                  ),
                ),
              ),
              padding: const EdgeInsets.all(12.0),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: pwd,
                decoration: InputDecoration(
                  hintText: 'password',
                  labelText: 'password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              ///fetching value from textfield using controller
              String uname =  email.text.trim();
              String psd = pwd.text.trim();

              if(uname !='' && psd !=''){
                if(username == uname && password == psd){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(context) =>const Homepage()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('username and password is mismatch')));
                }
              }else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Field cannot be empty')));
                  }
            },
                child: Text('login')),
            TextButton(onPressed: () {}, child: Text('register!')),
            TextButton(onPressed: () {}, child: Text('skip')),
          ],
        ),
      ),
    );


  }

}