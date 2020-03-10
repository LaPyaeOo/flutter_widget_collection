import 'package:flutter/material.dart';
import 'package:my_new_app/home.dart';

void main(){
  runApp(Starter());
}

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Home(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}