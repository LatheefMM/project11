import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: navdrawer(),
  ));
}

class navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav_Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: const Color.fromARGB(255, 214, 189, 157)),
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img.png"),
                        fit: BoxFit.cover)),
                accountName: Text("Latheef"),
                accountEmail: Text("latheefmm34@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/ic_launcher.png")),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/phonebook.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/1177497.png"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("profiles"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text("home"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("input"),
              ),
              ListTile(
                leading: Icon(Icons.no_accounts_outlined),
                title: Text("resources"),
              ),
              ListTile(
                leading: Icon(Icons.manage_accounts_rounded),
                title: Text("settings"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.explicit_rounded),
                title: Text("about"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}