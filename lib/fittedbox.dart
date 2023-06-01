import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fitttedboox(),
  ));
}

class fitttedboox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: Card(
              color: Colors.pinkAccent,
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      'fitted box example',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Container(
                      height: 300,
                      // height: MediaQuery.of(context).size.height * .2,
                      child: Image.asset("assets/ic_launcher.png"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}