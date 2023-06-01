import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: exitbox(),
  ));
}

class exitbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showalert() async {
      return await showDialog(
          context: context,
          builder: ((context) => AlertDialog(
            title: const Text("exit?!!!"),
            content: const Text(" Do u really want to exit "),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('yes')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("no")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("cancel"))
            ],
          )));
    }

    return WillPopScope(
      onWillPop: showalert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("exit from the app"),
        ),
        body: const Center(
          child: Text("press back button to exit"),
        ),
      ),
    );
  }
}