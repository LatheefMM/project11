import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Homepage.dart';
import 'listviewbuilder.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          const MaterialApp(
           useInheritedMediaQuery: true,
              home: MyApp()), // Wrap your app
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();//to convert myapp which is currently immutable to a mutable state
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Listviewbuilder()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            //height: double.infinity,
            ///background color
           //color: Colors.blueAccent,
            decoration: const BoxDecoration(
              image:  DecorationImage(
               fit: BoxFit.cover,
                image:AssetImage('assets/img.png'),
              ),),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.network('https://images.unsplash.com/photo-1666584589147-46de0b9f58a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                  //height: 110, width: 40,),
                  Image.asset('assets/ic_launcher.png',height: 100,),
                  //const Icon(Icons.ac_unit_rounded,size: 50,color: Colors.amberAccent,),
                  const Text(
                    'App-lication',
                    //style: GoogleFonts.abel(),
                     style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                     ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
