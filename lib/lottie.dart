import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: lottie(),));
}

class lottie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      //child: Lottie.asset('assets/animation/74723-sunrise.json'),
      child: Lottie.network('https://assets8.lottiefiles.com/packages/lf20_kxmify2d.json'),
    ),
  );
  }
}
