import 'package:flutter/material.dart';
import 'package:week1s2/screens/calculator.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "calculator":(context) => calculator(),
      },
      initialRoute: "calculator",
    );
  }
}
void main(){
  runApp(MyApp());
}
